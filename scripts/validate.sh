#!/usr/bin/env bash
set -euo pipefail

required=(
  README.md
  rules.md
  schedule.md
  resources.md
  submission.md
  judging.md
  code-of-conduct.md
  faq.md
  participants/team-submissions.md
  judging/judge-evaluation-sheet.md
  outreach/hackathon-poster-text.md
  outreach/linkedin-announcement.md
  outreach/registration-form-template.md
  website/index.html
  website/style.css
  website/app.js
)

for f in "${required[@]}"; do
  [[ -f "$f" ]] || { echo "MISSING: $f"; exit 1; }
  echo "OK: $f"
done

echo "Validation complete."
