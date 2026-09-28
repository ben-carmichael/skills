# Skills

A collection of Claude Code skills for development workflows, published as a plugin and as editable files.

## Language

**Upstream mirror**:
A skill kept byte-identical to a file in another repository so it can be re-synced by copying.
_Avoid_: fork, vendored copy

**Wrapper skill**:
A skill that applies an **Upstream mirror** and then adds local behaviour on top, without modifying the mirror.
_Avoid_: extension, override

**Voice reference**:
A sample of writing whose style a rewrite imitates; an example to emulate, not a rules list.
_Avoid_: tone file, tone of voice, TOV

## Relationships

- **unslop** is an **Upstream mirror** of `cursor/plugins` `pstack/skills/unslop`
- **unslop-voice** is a **Wrapper skill** over **unslop**, taking an optional **Voice reference**

## Flagged ambiguities

- "tone reference" / "tone-of-voice file" were used interchangeably for what is now **Voice reference**.
