---
name: todo
description: Add a structured TODO.md tracking file to the project root. This skill should be used when the user asks to "add a todo file", "create TODO.md", "set up task tracking", "initialize a TODO list", or runs the /bc-skills:todo command.
---

# Add TODO.md to Project

Create a `TODO.md` file in the current working directory with a structured template for tracking work.

## Workflow

1. Check if a `TODO.md` file already exists in the current working directory.
2. If it exists, ask the user: "A TODO.md already exists. Would you like to overwrite it, or leave it as-is?"
   - If the user chooses to leave it, stop and confirm no changes were made.
   - If the user chooses to overwrite, proceed to step 3.
3. Write the following template to `TODO.md` in the current working directory:

```markdown
# TODO

## Bugs

## Features

## Chores
```

4. Confirm the file was created.
