#!/bin/bash
# Installs the playwright-cli binary used by the playwright-cli skill in Claude Code on the web.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if ! command -v playwright-cli >/dev/null 2>&1; then
  npm install -g @playwright/cli@latest
fi

# Point playwright-cli at the preinstalled Chromium instead of the default Chrome channel.
if [ -x /opt/pw-browsers/chromium ] && [ -n "${CLAUDE_ENV_FILE:-}" ]; then
  {
    echo 'export PLAYWRIGHT_MCP_BROWSER=chromium'
    echo 'export PLAYWRIGHT_MCP_EXECUTABLE_PATH=/opt/pw-browsers/chromium'
    echo 'export PLAYWRIGHT_MCP_SANDBOX=false'
  } >> "$CLAUDE_ENV_FILE"
fi
