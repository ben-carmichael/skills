# Skills

A collection of skills for development workflows. Installable via the [`skills` CLI](https://github.com/vercel-labs/skills).

## Skills CLI Commands

### Install

Select from all available skills:

```bash
npx skills@latest add ben-carmichael/skills
```

Install specific skills:

```bash
npx skills@latest add ben-carmichael/skills --skill bc-grill-me --skill bc-todo
```

Install all available skills:

```bash
npx skills@latest add ben-carmichael/skills --skill "*"
```

### List

List all installed skills (project and global):

```bash
npx skills@latest list

```

List only global skills:

```bash
npx skills@latest list -g

```

### Update

Check if any installed skills have updates:

```bash
npx skills@latest check

```

Update all skills to latest versions:

```bash
npx skills@latest update
```

### Remove

Remove interactively (select from installed skills):

```bash
npx skills@latest remove
```

Remove a specific skill by name:

```bash
npx skills@latest remove bc-grill-me
```

Remove from global scope:

```bash
npx skills@latest remove --global bc-grill-me
```

## Available Skills

### Planning & Design

- `bc-grill-me`
  - Get relentlessly interviewed about a plan or design until every branch of the decision tree is resolved.
- `bc-issue-to-plan`
  - Create a concrete implementation plan from a GitHub issue, exploring the codebase to identify files and changes needed.
- `bc-prd-to-issues`
  - Break a PRD into independently-grabbable GitHub issues using tracer-bullet vertical slices.
- `bc-write-prd`
  - Create a PRD through user interview, codebase exploration, and module design, then submit as a GitHub issue.

### Development

- `bc-todo`
  - Create a structured TODO.md with Bugs, Features, and Chores sections.

### Writing

- `bc-write-case-study`
  - Generate a polished case study blog post from a code repository.
