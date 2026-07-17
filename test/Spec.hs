module Spec where

import Data.Yaml (Value)
import Main (baseUrl, loadApiKeyHeader, makePayload)
import Network.HTTP.Req (POST (POST), ReqBodyJson (ReqBodyJson), defaultHttpConfig, jsonResponse, req, responseBody, runReq, (/:))
import Relude

main :: IO ()
main = do
  apiKeyHeader <- loadApiKeyHeader
  runReq defaultHttpConfig $ do
    response <- req POST (baseUrl /: "models" /: "gemini-3.5-flash:generateContent") (ReqBodyJson (makePayload "strain")) jsonResponse apiKeyHeader
    liftIO $ print (responseBody response :: Value)
