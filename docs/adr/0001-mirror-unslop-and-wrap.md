# Mirror unslop from upstream and wrap it rather than fork it

`unslop` is kept byte-identical to `cursor/plugins` `pstack/skills/unslop/SKILL.md`, frontmatter included, and re-synced with `scripts/sync-unslop.sh`. Local behaviour (British English, an optional target file, an optional **Voice reference**) lives in a separate **Wrapper skill**, `unslop-voice`, which reads `../unslop/SKILL.md` at run time instead of copying its rules. We chose this over a customised fork because the fork had drifted (upstream removed rules, added rules 32–33, dropped "Adding soul", and went manual-only) and every sync meant a hand merge.

## Consequences

- `unslop` inherits upstream's `disable-model-invocation: true`, so nothing in this repo can invoke it through the Skill tool; other skills load its file by path.
- `unslop-voice` depends on `unslop` being installed alongside it; with `npx skills`, users must install both.
- Upstream removals (e.g. rules 1, 2, 4, 6, 21) are accepted, not re-added locally.
