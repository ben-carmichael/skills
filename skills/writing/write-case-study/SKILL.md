---
name: write-case-study
description: Generate a polished case study blog post in markdown from a code repository.
disable-model-invocation: true
---

# Case Study Generator

Generate a professional case study blog post in markdown format from a code repository. The output is portfolio content aimed at a technical audience — typically hiring managers or senior engineers evaluating the author's work.

## Gather inputs

**Before any research, ask all three questions below in a single message, then stop and wait for the answer.** Do not begin exploring the repository, reading files, or drafting until the user has replied. Asking only about the repository and proceeding is a failure of this skill.

Ask them as a numbered list in plain text — the answers are free-form, so do not use a multiple-choice prompt:

1. **Target repository** — offer the current working directory as the default.
2. **Tone-of-voice reference** — an optional file of the author's own writing. List plausible candidates found nearby rather than demanding a typed path.
3. **Personal context** — role on the project, team size, adoption metrics, who the piece is aimed at. The codebase cannot reveal any of this. Ask plainly and accept a short answer or none.

Skip an individual question only if the user already answered it in conversation. If that leaves at least one unanswered, still ask the remaining ones and wait.

A tone-of-voice reference is an example to emulate, not a rules list. Read it before drafting and match its sentence length and rhythm, word choice, how opinionated or hedged it is, and its structural habits. Where it conflicts with the tone guidance below, the reference wins.

If the user skips personal context, write in a neutral first-person voice. When they describe their own contributions ("I led the architecture"), use first person and let it carry their ownership.

## Audience & Tone

The reader is a **hiring manager or senior engineer with technical understanding** — someone who can appreciate architectural decisions and technology choices but also cares about business impact, problem-solving ability, and communication clarity. They're scanning this to assess whether the author is someone they'd want on their team.

Write in a **professional, polished marketing style with technical substance**. This means:

- Lead with impact and purpose, not implementation details
- Use technical terms accurately but don't assume deep framework expertise
- Show decision-making and judgment, not just what was built
- Keep it confident without being boastful — let the work speak

Target **1000–1500 words**.

## Research Phase

Before writing, thoroughly explore the codebase to understand:

1. **Project purpose** — Read the README, package.json (or equivalent manifest), and any docs/ directory. What does this project do and who uses it?
2. **Architecture** — Map the directory structure, identify key patterns (component structure, data flow, build pipeline). Look at the main entry point and trace how things connect.
3. **Tech stack** — Identify frameworks, libraries, build tools, testing tools, and any notable dependencies. Note versions if they reveal intentional choices (e.g., staying on a specific major version for compatibility).
4. **Scale indicators** — Count components/modules, look at test coverage, check for CI/CD config, look at package exports. These signal project maturity.
5. **Interesting decisions** — Look for custom utilities, unusual patterns, wrapper abstractions, or config that reveals thoughtful engineering (e.g., a custom forwardRef for cross-version React compatibility, a design token system, accessibility primitives).
6. **Git history** (only if it adds value) — Check recent commit conventions, contributor count, branching strategy. Skip this if the repo is small or the history doesn't add to the narrative.

Spend real time on this. The quality of the case study depends on actually understanding the codebase, not just listing files.

## Case Study Template

Use this structure. Every section is required, but adapt the content to what's genuinely interesting about the project — don't force content where there isn't any.

See `references/template.md` for the full output template.

## Writing Guidelines

- **Show judgment, not just execution.** "We chose X because Y" is always more compelling than "We used X."
- **Be specific.** "A library of 40+ accessible React components" beats "a component library."
- **Use concrete details from the codebase.** Reference actual patterns, actual component counts, actual tooling — the reader should feel like this is grounded in real work, not a template with blanks filled in.
- **Don't oversell.** If something is straightforward, don't dress it up as innovative. Authenticity builds trust.
- **Structure for scanning.** Hiring managers are busy. Use headers, short paragraphs, and the tech stack table to make key info findable at a glance.
- **Weave in the personal context.** Whatever the user gave under "Gather inputs" belongs in the narrative, not in a lump at the top.

## Output

Return the case study as a single markdown document. Do not wrap it in a code block — output it as a raw `.md` file ready to publish. Save it to a sensible location in the project with a timestamped filename (e.g., `case-study-2025-01-15.md` in the root) unless the user specifies otherwise. Use today's actual date in `YYYY-MM-DD` format.

## Unslop pass

Always run the `unslop` skill on the finished draft before presenting it. This is not optional and not conditional on how clean the draft looks.

Invoke it with the saved case-study file as the target. If a tone-of-voice reference was given, pass it as the second argument so the two skills match the same voice:

```
/unslop <case-study-file> [tone-reference-file]
```

Apply its edits in place, then present the result.
