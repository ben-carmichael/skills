# bc-marketplace

A Claude Code plugin marketplace containing a personal collection of skills for development workflows.

## Skills

| Skill        | Description                                                           |
| ------------ | --------------------------------------------------------------------- |
| `todo`       | Creates a structured TODO.md with Bugs, Features, and Chores sections |
| `case-study` | Generates a polished case study blog post from a code repository      |

## Plugin Management

### Install

#### Add the marketplace (one-time)

```bash
/plugin marketplace add ben-carmichael/bc-marketplace
```

#### Install the plugin

```bash
/plugin install bc-skills@bc-marketplace
```

### Uninstall

```bash
claude plugin uninstall bc-skills
```

### Enable / Disable

```bash
claude plugin enable bc-skills
claude plugin disable bc-skills
```

### Update

```bash
claude plugin update bc-skills@bc-marketplace
```

### Auto-Update

Auto-update can be enabled so Claude Code fetches the latest version at session start:

1. Run `/plugin` to open the plugin manager
2. Select the **Marketplaces** tab
3. Choose **bc-marketplace**
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
