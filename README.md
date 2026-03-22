# Agent Skills

A collection of reusable skills for Claude Code development workflows.

## Skills

| Skill        | Description                                                           |
| ------------ | --------------------------------------------------------------------- |
| `todo`       | Creates a structured TODO.md with Bugs, Features, and Chores sections |
| `write-case-study` | Generates a polished case study blog post from a code repository      |

## Install

```bash
npx skills@latest add ben-carmichael/skills/todo
npx skills@latest add ben-carmichael/skills/write-case-study
```

## Usage

Skills trigger automatically based on context, or can be invoked directly:

- `/todo` — Add a TODO.md to the current project
- `/write-case-study` — Generate a case study from the current repo

## License

MIT
