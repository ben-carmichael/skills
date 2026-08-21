---
name: write-case-study
description: Generate a polished case study blog post in markdown from a code repository. Use when the user wants to create portfolio content, a case study, a project write-up, or blog post about a codebase they've built. Also trigger when user mentions "write up this project", "portfolio piece", "showcase this repo", or "document this for my blog" — even if they don't say "case study" explicitly.
---

# Case Study Generator

Generate a professional case study blog post in markdown format from a code repository. The output is portfolio content aimed at a technical audience — typically hiring managers or senior engineers evaluating the author's work.

If the user provides personal context (e.g., their name, role, employer, or audience) via arguments or in conversation, incorporate it. Otherwise, write in a neutral first-person voice and ask for any key details you need before writing.

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
- **Incorporate user-provided context.** If the user tells you about their role ("I led the architecture"), team size, adoption metrics, or other personal context, weave it into the case study naturally. Use first-person voice when the user describes their personal contributions — this is portfolio content and should reflect their ownership.

## Output

Return the case study as a single markdown document. Do not wrap it in a code block — output it as a raw `.md` file ready to publish. Save it to a sensible location in the project with a timestamped filename (e.g., `case-study-2025-01-15.md` in the root) unless the user specifies otherwise. Use today's actual date in `YYYY-MM-DD` format.
