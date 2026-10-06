#!/bin/bash
# PreToolUse(Bash) hook: wrap common test runners so Claude sees failures and
# the final summary instead of the full log. Preserves the exit code.
input=$(cat)
cmd=$(jq -r '.tool_input.command // empty' <<<"$input")

# Only plain test invocations; leave piped/redirected commands alone.
if [[ -z "$cmd" || "$cmd" == *"|"* || "$cmd" == *">"* ]] ||
  ! [[ "$cmd" =~ ^(npm|pnpm|yarn|bun)\ (run\ )?test|^npx\ (jest|vitest)|^pytest|^python3?\ -m\ pytest|^go\ test|^cargo\ test ]]; then
  echo '{}'
  exit 0
fi

filtered="out=\$(mktemp); { $cmd ; } >\"\$out\" 2>&1; rc=\$?; \
grep -n -A 8 -E '(FAIL|ERROR|Error:|error\\[|panicked|Traceback|AssertionError|✗|✕)' \"\$out\" | head -150; \
echo '--- last 20 lines ---'; tail -n 20 \"\$out\"; \
echo \"--- exit code: \$rc (full log: \$out) ---\"; exit \$rc"

jq --arg c "$filtered" '{hookSpecificOutput: {hookEventName: "PreToolUse", permissionDecision: "allow", updatedInput: (.tool_input + {command: $c})}}' <<<"$input"
