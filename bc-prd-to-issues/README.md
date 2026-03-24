# bc-prd-to-issues

## What it does

Breaks a PRD (product requirements document) GitHub issue into independently-grabbable implementation tickets using vertical slices (tracer bullets). Each slice cuts through all integration layers end-to-end — schema, API, UI, and tests — so every issue is demoable on its own.

_Adapted from [mattpocock/skills](https://github.com/mattpocock/skills)._

The skill:
1. Fetches the PRD issue from GitHub
2. Optionally explores the codebase to understand the current state
3. Drafts vertical slices, each labeled as HITL (requires human interaction) or AFK (can be merged without it)
4. Quizzes you on granularity, dependencies, and HITL/AFK designations
5. Creates the approved issues in GitHub in dependency order

## Install

```
npx skills@latest add ben-carmichael/skills/bc-prd-to-issues
```

## Usage

```
/bc-prd-to-issues
```

The skill will ask you for the PRD issue number or URL.
