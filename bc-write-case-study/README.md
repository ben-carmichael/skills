# bc-write-case-study

## What it does

Generates a polished case study blog post in Markdown from a code repository. The output is portfolio content (1000–1500 words) aimed at hiring managers and senior engineers — written to showcase architectural decisions, technology choices, and business impact, not just a list of files.

The skill thoroughly explores the codebase — reading the README, tracing architecture, identifying tech stack, noting scale indicators, and surfacing interesting engineering decisions — before writing a single word.

## Install

```
npx skills@latest add ben-carmichael/skills/bc-write-case-study
```

## Usage

Run in the root of the repository you want to write about:

```
/bc-write-case-study
```

Optionally provide personal context as an argument:

```
/bc-write-case-study I led the architecture, team of 3, shipped to 10k users
```

The case study is saved to the project root with a timestamped filename (e.g., `case-study-2026-03-24.md`).
