# Case Study Output Template

Use this structure for the case study. Every section is required, but adapt content to what's genuinely interesting about the project — don't force content where there isn't any.

---

# [Project Name]: [One-line value proposition]

> [A single sentence that frames the project's purpose and impact — this is the hook]

## The Challenge

What problem did this project solve? Frame it from a business or team perspective, not a technical one. Why did this need to exist? What was the pain point or gap? If there was an existing solution that fell short, mention it. This section should make the reader understand the "why" before the "what".

## Approach & Architecture

How was the problem tackled at a high level? Describe the architectural strategy and the reasoning behind it. Cover:

- Overall architecture pattern and why it was chosen
- Key structural decisions (e.g., monorepo vs. multi-package, component composition model, styling strategy)
- How the system is organized and why that organization serves its users

Keep this accessible — explain the *reasoning*, not just the structure.

## Technical Highlights

Pick 3–5 genuinely interesting technical details. These should demonstrate engineering judgment, not just feature completeness. For each one, briefly explain what it is, why it matters, and what problem it solves.

Good examples: cross-version compatibility layers, accessibility-first design, theming systems, build optimizations, developer experience tooling, testing strategies.

Bad examples: "uses React" (too generic), listing every single utility function (too granular).

## Tech Stack

A clean, scannable summary of the technology choices. Group by category:

| Category | Technologies |
|----------|-------------|
| Core | ... |
| Styling | ... |
| Testing | ... |
| Build & Tooling | ... |
| Documentation | ... |

Only include categories that are relevant.

## Developer Experience

If the project has meaningful DX tooling (documentation systems, scaffolding, quality gates, testing infrastructure), give it a dedicated section with 2–3 short sub-sections. This signals that the author thinks about the people who use their code, not just the end users. Examples: interactive documentation, code generators, visual regression testing, linting and commit conventions. Skip this section if the project doesn't have notable DX investments.

## Impact & Outcomes

What did this project achieve? Format this as **bullet points with bold lead-ins and specific numbers** — this section should be the most scannable part of the case study. Each bullet should start with a concrete metric or outcome in bold, followed by a short explanation.

Example format:
- **5 product teams** share a single UI foundation, eliminating duplicate component development
- **130+ components** and **50+ hooks** cover the full breadth of UI and application logic needs
- **React 16-19 compatibility** removed upgrade pressure, letting teams migrate on their own timelines

If specific numbers aren't available, describe the qualitative impact — but still use the bold-lead-in bullet format for scannability.

## Key Takeaways

2–3 concise reflections on what made this project successful or what was learned. These should reveal the author's engineering philosophy and judgment. Avoid generic platitudes ("testing is important") — be specific to this project.
