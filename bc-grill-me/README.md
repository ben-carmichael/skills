# bc-grill-me

## What it does

Interviews you relentlessly about every aspect of a plan or design until reaching a shared understanding. For each question, it walks down the decision tree one branch at a time, resolves dependencies between decisions, and provides a recommended answer. If a question can be answered by exploring the codebase, it does that instead of asking.

Use this to stress-test a plan before committing to it.

_Adapted from [mattpocock/skills](https://github.com/mattpocock/skills)._

## Install

```
npx skills@latest add ben-carmichael/skills/bc-grill-me
```

## Usage

Invoke the skill, optionally describing what you want to be grilled about:

```
/bc-grill-me
```

Or with context:

```
/bc-grill-me I want to add real-time collaboration to the editor
```
