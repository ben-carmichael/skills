# Skills

A collection of skills for development workflows.

Installable via the [`skills` CLI](https://github.com/vercel-labs/skills).

## Skills CLI Commands

### Install

```bash
# Install a skill
npx skills@latest add ben-carmichael/skills/bc-<skill-name>

# Install multiple skills
npx skills@latest add ben-carmichael/skills --skill bc-grill-me --skill bc-todo
```

### Update

```bash
# Check if any installed skills have updates
npx skills@latest check

# Update all skills to latest versions
npx skills@latest update
```

### Remove

```bash
# Remove interactively (select from installed skills)
npx skills@latest remove

# Remove a specific skill by name
npx skills@latest remove bc-grill-me

# Remove from global scope
npx skills@latest remove --global bc-grill-me
```

### List

```bash
# List all installed skills (project and global)
npx skills@latest list

# List only global skills
npx skills@latest ls -g
```

## Planning & Design

### bc-grill-me

Get relentlessly interviewed about a plan or design until every branch of the decision tree is resolved.

```
npx skills@latest add ben-carmichael/skills/bc-grill-me
```

### bc-issue-to-plan

Create a concrete implementation plan from a GitHub issue, exploring the codebase to identify files and changes needed.

```
npx skills@latest add ben-carmichael/skills/bc-issue-to-plan
```

### bc-prd-to-issues

Break a PRD into independently-grabbable GitHub issues using tracer-bullet vertical slices.

```
npx skills@latest add ben-carmichael/skills/bc-prd-to-issues
```

### bc-write-prd

Create a PRD through user interview, codebase exploration, and module design, then submit as a GitHub issue.

```
npx skills@latest add ben-carmichael/skills/bc-write-prd
```

## Development

### bc-todo

Create a structured TODO.md with Bugs, Features, and Chores sections.

```
npx skills@latest add ben-carmichael/skills/bc-todo
```

## Writing

### bc-write-case-study

Generate a polished case study blog post from a code repository.

```
npx skills@latest add ben-carmichael/skills/bc-write-case-study
```
