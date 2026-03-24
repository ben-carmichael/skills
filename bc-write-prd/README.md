# bc-write-prd

## What it does

Creates a PRD (product requirements document) through a structured interview, codebase exploration, and module design — then submits it as a GitHub issue.

_Adapted from [mattpocock/skills](https://github.com/mattpocock/skills)._

The skill:
1. Asks for a detailed description of the problem and any solution ideas
2. Explores the codebase to verify assertions and understand current state
3. Interviews you relentlessly to resolve every design decision
4. Identifies deep modules to build or modify (testable, stable interfaces)
5. Confirms the module breakdown with you, then writes the PRD and opens a GitHub issue

The output includes a problem statement, user stories, implementation decisions, testing decisions, and out-of-scope items.

## Install

```
npx skills@latest add ben-carmichael/skills/bc-write-prd
```

## Usage

```
/bc-write-prd
```

The skill starts by asking you to describe the problem you want to solve.
