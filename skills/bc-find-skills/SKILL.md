---
name: bc-find-skills
description: Browse and install skills from ben-carmichael's skill collection. Use when the user asks to browse skills, find a skill, install a skill, or runs /bc-find-skills.
argument-hint: "[optional: what you're trying to do]"
---

Show the user the available skills from ben-carmichael's collection and help them install the right one.

## Available Skills

### Planning & Design

| Skill | What it does | Install |
|-------|-------------|---------|
| **bc-grill-me** | Relentlessly interviews you about a plan or design until every branch of the decision tree is resolved | `npx skills@latest add ben-carmichael/skills/bc-grill-me` |
| **bc-issue-to-plan** | Creates a concrete implementation plan from a GitHub issue, exploring the codebase to identify files and changes needed | `npx skills@latest add ben-carmichael/skills/bc-issue-to-plan` |
| **bc-prd-to-issues** | Breaks a PRD into independently-grabbable GitHub issues using tracer-bullet vertical slices | `npx skills@latest add ben-carmichael/skills/bc-prd-to-issues` |
| **bc-write-prd** | Creates a PRD through user interview, codebase exploration, and module design, then submits as a GitHub issue | `npx skills@latest add ben-carmichael/skills/bc-write-prd` |

### Development

| Skill | What it does | Install |
|-------|-------------|---------|
| **bc-todo** | Creates and manages a structured TODO.md with Bugs, Features, and Chores sections | `npx skills@latest add ben-carmichael/skills/bc-todo` |
| **bc-find-skills** | Browse and install skills from this collection (you're using it now) | `npx skills@latest add ben-carmichael/skills/bc-find-skills` |

### Writing

| Skill | What it does | Install |
|-------|-------------|---------|
| **bc-write-case-study** | Generates a polished case study blog post from a code repository | `npx skills@latest add ben-carmichael/skills/bc-write-case-study` |

## Instructions

1. If the user provided an argument describing what they want to do, recommend the most relevant skill(s) and explain why they match.
2. If no argument was given, display the full table above and ask what they're trying to accomplish.
3. Once the user picks a skill, show the install command and tell them to run it in their terminal (e.g. `! npx skills@latest add ben-carmichael/skills/<skill-name>`).
4. After installing, the skill will be available in their current Claude Code session.
