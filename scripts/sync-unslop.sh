#!/usr/bin/env bash
# Re-sync skills/writing/unslop/SKILL.md with its upstream mirror source.
# See docs/adr/0001-mirror-unslop-and-wrap.md.
set -euo pipefail

cd "$(dirname "$0")/.."

repo="cursor/plugins"
path="pstack/skills/unslop/SKILL.md"
target="skills/writing/unslop/SKILL.md"

sha=$(gh api "repos/$repo/commits?path=$path&per_page=1" --jq '.[0].sha')
short=${sha:0:7}

gh api "repos/$repo/contents/$path?ref=$sha" -H "Accept: application/vnd.github.raw" > "$target"

# Update the mirror line in both READMEs.
sed -i.bak -E "s|$repo@[0-9a-f]{7}\]\(https://github.com/$repo/blob/[0-9a-f]+/|$repo@$short](https://github.com/$repo/blob/$short/|" \
  README.md skills/writing/README.md
rm -f README.md.bak skills/writing/README.md.bak

echo "Synced $target to $repo@$short"
git --no-pager diff --stat -- "$target" README.md skills/writing/README.md
git --no-pager diff -- "$target"
