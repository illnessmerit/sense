# sense

## Goals

### Rating

> Does `sense` use human feedback to rate associations?

No. Getting human feedback takes too much time.

Instead, `sense` leans on a large language model (LLM) to rate associations.

### Coverage

> Does `sense` evaluate every English word?

No. `sense` pulls its vocabulary from English Wiktionary entries.

> Does `sense` evaluate every English word in Wiktionary?

No. Evaluating every English word in Wiktionary would cost too much.

`sense` narrows its scope based on the following criteria:

- Wiktionary tags the phrase as `English lemmas`.

- About half of Americans aged 10 and up are thought to know the phrase's most common meaning.

### Budget

> What is the target monthly budget?

The target is to keep monthly usage under $100. I set this limit because most productivity tools cost less than that.
