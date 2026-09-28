---
name: unslop-voice
description: Run unslop in British English, optionally matching a voice reference.
argument-hint: "[target-file] [voice-reference-file]"
disable-model-invocation: true
---

# Unslop voice

Apply the `unslop` skill, then write in British English and match a voice reference if one is given.

## Load unslop

Read `../unslop/SKILL.md`, relative to this file. It holds the process and the numbered patterns. Follow it in full. Don't copy its rules here.

If that file is missing, stop and tell the user to install the `unslop` skill alongside this one.

## Determine intent

- **No file arguments**: Apply to the text currently being written in the conversation.
- **One file path**: That file is the target.
- **Two file paths**: The first is the target. The second is the voice reference.

The voice reference can also be pasted text in the conversation. A single file path is always the target, never the voice reference.

When a target file is given, read it, edit it in place, then present the diff.

## Process

1. Run the unslop process on the target text.
2. Use British English spelling (colour, organise, realise, travelling).
3. If a voice reference was given, match it (see below).
4. Re-scan the result against unslop's patterns. Matching a voice must not reintroduce a tell.

## Matching a voice reference

Treat the voice reference as an example to emulate, not a rules list. Read it and match:

- Sentence length and rhythm.
- Word choice and vocabulary level.
- How opinionated or hedged it is.
- Recurring phrasing or structural habits, such as how it opens a paragraph or moves between points.

Where the reference conflicts with unslop's patterns, the patterns win. If the reference uses em dashes, still remove them.
