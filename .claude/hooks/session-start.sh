#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code on the web environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "Installing WordPress development skills..."

npx --yes skills add https://github.com/wpgaurav/bricks-skills
npx --yes skills add https://github.com/WordPress/agent-skills
npx --yes skills add https://github.com/wpgaurav/WordPress-skills

echo "Skills installation complete."
