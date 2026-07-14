module Main (main) where

import Data.Yaml (FromJSON, decodeFileEither)
import Options.Applicative (execParser, helper, strArgument)
import Options.Applicative.Builder (info)
import Relude

data Config = Config
  { benchmark :: Text,
    theme :: Text
  }
  deriving (Generic)

instance FromJSON Config

main :: IO ()
main = do
  file <- execParser $ info (strArgument mempty <**> helper) mempty
  result <- decodeFileEither file
  case result of
    Left _ -> pure ()
    Right (_ :: Config) -> pure ()
  pure ()
