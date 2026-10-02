#!/bin/bash
# Installs the CLIs used by the project skills (graphify, playwright-cli) in Claude Code on the web.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# graphify CLI for the graphify skill and its PreToolUse hooks (.claude/settings.json)
if ! command -v graphify >/dev/null 2>&1; then
  if command -v uv >/dev/null 2>&1; then
    uv tool install graphifyy -q
  else
    pip install -q graphifyy || pip install -q --break-system-packages graphifyy
  fi
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
