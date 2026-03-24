# bc-todo

## What it does

Creates and manages a `TODO.md` file in the current working directory. Items are organized into three categories: **Bugs**, **Features**, and **Chores**.

- With no argument: generates a fresh `TODO.md` (or prompts before overwriting an existing one)
- With an argument: adds a new checkbox item to the appropriate category, inferring the category from context

## Install

```
npx skills@latest add ben-carmichael/skills/bc-todo
```

## Usage

Initialize a new `TODO.md`:

```
/bc-todo
```

Add an item (category is inferred automatically):

```
/bc-todo login button is broken on mobile
/bc-todo add dark mode support
/bc-todo upgrade dependencies to latest
```
