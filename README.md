# Skills

A collection of skills for development workflows. Two ways in: as a Claude Code plugin, or as editable files via the [`skills` CLI](https://github.com/vercel-labs/skills). Pick one — installing both leaves you with every skill twice.

## Installation

Two ways in. **The Claude Code plugin** installs the whole set as a managed, read-only bundle that updates when new skills ship — you subscribe rather than fork. **The skills CLI** copies editable skill files into your project, so you can hack on them and make them your own. Pick one — installing both leaves you with every skill twice.

<details>
<summary><strong>Claude Code plugin</strong></summary>

Add the marketplace once, then install:

```bash
/plugin marketplace add ben-carmichael/skills
/plugin install bc-skills
```

Commands are namespaced, e.g. `/bc-skills:todo`.

</details>

<details>
<summary><strong>skills CLI (editable files)</strong></summary>

Copies skill files into your project as ordinary files you own and can edit:

```bash
npx skills@latest add ben-carmichael/skills
```

Install specific skills:

```bash
npx skills@latest add ben-carmichael/skills --skill todo --skill write-case-study
```

Install all available skills:

```bash
npx skills@latest add ben-carmichael/skills --skill "*"
```

##### List

List all installed skills (project and global):

```bash
npx skills@latest list
```

List only global skills:

```bash
npx skills@latest list -g
```

##### Update

Check if any installed skills have updates:

```bash
npx skills@latest check
```

Update all skills to latest versions:

```bash
npx skills@latest update
```

##### Remove

Remove interactively (select from installed skills):

```bash
npx skills@latest remove
```

Remove a specific skill by name:

```bash
npx skills@latest remove todo
```

Remove from global scope:

```bash
npx skills@latest remove --global todo
```

</details>

## Available Skills

### Productivity

- `todo`
  - Create a structured TODO.md with Bugs, Features, and Chores sections.

### Writing

- `write-case-study`
  - Generate a polished case study blog post from a code repository.
- `unslop`
  - Cut AI tells from any writing. Must always apply.
