# Changelog

## 0.1.1 — 2026-03-21

### Fixed
- Skill `name` fields now include the `bc-skills:` namespace prefix (e.g. `bc-skills:todo`) so skills register as `/bc-skills:todo` instead of the global `/todo`

## 0.1.0 — 2026-03-21

### Added
- Initial plugin structure with manifest
- `todo` skill — creates a structured TODO.md with Bugs, Features, and Chores sections
- `case-study` skill — generates polished case study blog posts from code repositories
