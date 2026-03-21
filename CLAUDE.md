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

## Commands

```bash
# Validate plugin structure and schema
claude plugin validate .

# Install from marketplace (on any machine)
/plugin marketplace add ben-carmichael/bc-marketplace
/plugin install bc-skills@bc-marketplace

# Update installed plugin
claude plugin update bc-skills
```

## Gotchas

- **`marketplace.json` source field** must be an object, not a plain string: `{ "source": "github", "repo": "ben-carmichael/bc-marketplace" }` — a plain string like `"owner/repo"` or `"."` will fail with `Invalid input`
- **Version sync**: `plugin.json` and `marketplace.json` must always have matching `version` values — bump both together when releasing
- **`argument-hint` on user-invoked skills**: omit entirely if the skill takes no arguments; setting it to `(no arguments)` may be treated as a literal hint string
- **Skill `name` must include the plugin namespace**: Use `name: bc-skills:todo` (not just `name: todo`) — without the prefix the skill registers as `/todo` globally instead of `/bc-skills:todo`. The validator will warn that the name doesn't match the folder name; ignore that warning, this is intentional

## Skill Conventions

- **Frontmatter `description`**: Use third-person with trigger phrases (e.g., "This skill should be used when the user asks to...")
- **Body**: Write in imperative form, not second person
- **User-invoked skills**: Include `argument-hint` and `allowed-tools` in frontmatter
- **Keep SKILL.md lean**: Target 1,500–2,000 words; move detailed content to `references/`
- **Naming**: Use kebab-case for all directory and file names
