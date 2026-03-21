# bc-skills

Personal collection of Claude Code skills, installable as a plugin across machines.

## Skills

| Skill | Description |
|-------|-------------|
| `todo` | Creates a structured TODO.md with Bugs, Features, and Chores sections |
| `case-study` | Generates a polished case study blog post from a code repository |

## Plugin Management

### Install

```bash
claude plugin add https://github.com/ben-carmichael/bc-skills
```

### Uninstall

```bash
claude plugin remove bc-skills
```

### Enable / Disable

```bash
claude plugin enable bc-skills
claude plugin disable bc-skills
```

### Update

```bash
claude plugin update bc-skills
```

### Auto-Update

If this plugin is installed via a marketplace, auto-update can be enabled so Claude Code fetches the latest version at session start. To configure:

1. Run `/plugin` to open the plugin manager
2. Select the **Marketplaces** tab
3. Choose the marketplace containing bc-skills
4. Select **Enable auto-update**

To disable all plugin auto-updates via environment variable:

```bash
export DISABLE_AUTOUPDATER=true
```

## Usage

Skills trigger automatically based on context, or can be invoked directly:

- `/bc-skills:todo` — Add a TODO.md to the current project
- `/bc-skills:case-study` — Generate a case study from the current repo

## License

MIT
