# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A Claude Code plugin marketplace (`bc-marketplace`) containing a personal collection of skills (`bc-skills`), installable across machines via `/plugin marketplace add ben-carmichael/bc-marketplace`.

## Structure

- `.claude-plugin/marketplace.json` — Marketplace catalog listing available plugins
- `.claude-plugin/plugin.json` — Plugin manifest (name, version, metadata)
- `skills/<name>/SKILL.md` — Each skill lives in its own directory with a required SKILL.md
- `skills/<name>/references/` — Supporting reference files loaded on demand

## Adding a New Skill

1. Create `skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`, `description`) and markdown body
2. Optionally add `references/`, `examples/`, or `scripts/` subdirectories for supporting content
3. Update the skills table in README.md
4. Add an entry to CHANGELOG.md
5. Bump `version` in both `plugin.json` and `marketplace.json`

## Validation

```bash
claude plugin validate .
```

## Skill Conventions

- **Frontmatter `description`**: Use third-person with trigger phrases (e.g., "This skill should be used when the user asks to...")
- **Body**: Write in imperative form, not second person
- **User-invoked skills**: Include `argument-hint` and `allowed-tools` in frontmatter
- **Keep SKILL.md lean**: Target 1,500–2,000 words; move detailed content to `references/`
- **Naming**: Use kebab-case for all directory and file names
