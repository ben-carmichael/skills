# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A collection of Claude Code skills for development workflows, distributed two ways: as a Claude Code plugin (`bc-skills`), and as editable files via `npx skills@latest add ben-carmichael/skills`.

## Structure

Skills live under `skills/<category>/<skill-name>/`, each a directory containing a `SKILL.md` with YAML frontmatter (`name`, `description`) and a markdown body. Optional subdirectories (`references/`, `examples/`, `scripts/`) hold supporting content; the skill body links to these files and Claude reads them when needed (they are not auto-loaded). Current categories: `productivity`, `writing`.

`.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json` declare the plugin — both must list every skill path under `skills/`.

## Adding a New Skill

1. Create `skills/<category>/<skill-name>/SKILL.md` with YAML frontmatter and markdown body — add a new category directory if none of the existing ones fit
2. Optionally add `references/`, `examples/`, or `scripts/` subdirectories
3. Add the skill's path to `skills` in `.claude-plugin/plugin.json`
4. Add the skill to the appropriate category in `README.md`; if adapted from another repo, include an italic attribution link

## Skill Conventions

- **`name` frontmatter = install slug**: The `name` field (e.g., `todo`) is what appears in the install command and the skill picker — not the directory name. Keep them in sync to avoid confusion.
- **Frontmatter `description`**: Third-person with trigger phrases (e.g., "This skill should be used when the user asks to...")
- **Body**: Imperative form, not second person
- **User-invoked skills**: Include `argument-hint` in frontmatter — this controls the hint shown in the skill UI and enables the argument input field. Omit `argument-hint` entirely if the skill takes no arguments
- **Manual-only skills**: Set `disable-model-invocation: true` in frontmatter for skills that should only run when explicitly invoked (e.g. `/write-case-study`), never auto-triggered by conversation context. Their `description` can then be a plain one-liner — no need for trigger phrases since the model never matches against it
- **Keep SKILL.md lean**: Target 1,500–2,000 words; move detailed content to `references/`
- **Attribution**: Skills directly adapted from other repos get `_Adapted from [owner/repo](url)._` in the README entry; skills merely inspired by another repo do not need attribution
- **Naming**: No author prefix — the plugin namespace handles disambiguation. Kebab-case for all directory and file names

## Testing a Skill

To verify a skill works after writing it, invoke it directly in Claude Code. If this repo is installed as the `bc-skills` plugin, skills are namespaced:

```
/bc-skills:<skill-name>
```

If installed via `npx skills` (plain files, no namespace):

```
/<skill-name>
```

Add an argument after the command if the skill accepts one. Claude will load the `SKILL.md` and execute it. No build or compilation step required.

## Publishing

Two paths, kept in sync:

- **Claude Code plugin**: add this repo's marketplace once with `/plugin marketplace add ben-carmichael/skills`, then `claude plugins install bc-skills` (or `/plugin install bc-skills`). Not listed in Claude Code's official marketplace — this is a self-hosted one, so the marketplace-add step is required first.
- **[`skills` CLI](https://github.com/vercel-labs/skills)**: `npx skills@latest add ben-carmichael/skills` writes editable copies into the user's project.

Both read directly from `skills/<category>/<skill-name>/SKILL.md` — no build step, no separate publish artifact.

## Agent skills

### Issue tracker

Issues live in GitHub Issues for `ben-carmichael/skills`, via the `gh` CLI. See `docs/agents/issue-tracker.md`.

### Domain docs

Single-context: `CONTEXT.md` + `docs/adr/` at the repo root. See `docs/agents/domain.md`.
