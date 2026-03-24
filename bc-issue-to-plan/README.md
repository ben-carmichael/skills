# bc-issue-to-plan

## What it does

Converts a GitHub issue into a concrete implementation plan saved as a Markdown file in `./plans/`. It bridges the gap between a GitHub issue (the "what") and writing code (the "how").

The skill:
1. Fetches the issue (and any linked parent PRD) from GitHub
2. Explores the codebase to identify affected files and existing patterns
3. Surfaces architectural decisions — resolved, recommended, or open
4. Quizzes you to confirm the approach before writing
5. Outputs a structured plan with implementation steps, testing strategy, and acceptance criteria

## Install

```
npx skills@latest add ben-carmichael/skills/bc-issue-to-plan
```

## Usage

Pass a GitHub issue number or URL as the argument:

```
/bc-issue-to-plan 42
```

```
/bc-issue-to-plan https://github.com/owner/repo/issues/42
```
