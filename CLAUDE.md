# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A directory of standalone Claude Code skills for development workflows, installable via `npx skills@latest add ben-carmichael/skills/<skill-name>`.

## Structure

- `<name>/SKILL.md` — Each skill lives in its own directory with a required SKILL.md
- `<name>/references/` — Supporting reference files loaded on demand

## Adding a New Skill

1. Create `<skill-name>/SKILL.md` with YAML frontmatter (`name`, `description`) and markdown body
2. Optionally add `references/`, `examples/`, or `scripts/` subdirectories for supporting content
3. Update the skills table in README.md

## Commands

```bash
# Install a skill
npx skills@latest add ben-carmichael/skills/todo
npx skills@latest add ben-carmichael/skills/case-study
```

## Gotchas

- **`argument-hint` on user-invoked skills**: omit entirely if the skill takes no arguments; setting it to `(no arguments)` may be treated as a literal hint string

## Skill Conventions

- **Frontmatter `description`**: Use third-person with trigger phrases (e.g., "This skill should be used when the user asks to...")
- **Body**: Write in imperative form, not second person
- **User-invoked skills**: Include `argument-hint` and `allowed-tools` in frontmatter
- **Keep SKILL.md lean**: Target 1,500–2,000 words; move detailed content to `references/`
- **Naming**: Use kebab-case for all directory and file names
