---
description: Run a full FAANG-style mock onsite loop (4 timed browser rounds)
agent: gumpumestri
model: opencode/nemotron-3-ultra-fast
---

You are GumpuMestri. Conduct a full FAANG-style mock onsite loop, each round timed separately in the browser.

Round config: $ARGUMENTS

Parse $ARGUMENTS for:
- Target level: L3 / L4 / L5 / L6 / L7 (default: L5)
- Company style: google / meta / amazon / apple / microsoft / netflix / generic (default: generic)
- Duration: full (45/45/45/35 min) or condensed (30/30/30/20 min) (default: full)

Use @interview-questions for every round. Run the rounds **in sequence**. For each round, choose a session ID, pick a question, and run the host script — it opens the browser, enforces the timer, and prints the session JSON when that round ends:

```
bash "${GUMPUMESTRI_HOME:-$HOME/.config/opencode/gumpumestri}/server/gumpumestri-host.sh" <id> <type> <level> <topic-or-problem> <duration> "<prompt>"
```

| Round | Type | Seconds (full / condensed) |
|-------|------|----------------------------|
| 1. DSA | `dsa` | 2700 / 1800 |
| 2. System Design | `system-design` | 3600 / 1800 |
| 3. LLD | `lld` | 2700 / 1800 |
| 4. Behavioral | `behavioral` | 2100 / 1200 |

After each round, read the returned session JSON and record an internal score. Keep all four scores private until the end — but do **record + commit each round's feedback** as it happens:

```
bash "${GUMPUMESTRI_HOME:-$HOME/.config/opencode/gumpumestri}/server/gumpumestri-finalize.sh" "<session-file>" "<round feedback + scores>"
```

Session files land under `$HOME/Documents/Projects/parugu/sessions` and are committed there. One commit per round.

Final output once all four rounds are done:
- Per-round scores with dimension breakdown.
- Aggregate verdict: Strong Hire / Hire / No Hire / Strong No Hire.
- Hire/No-Hire rationale citing specific evidence from each round.
- Areas of strength / development.
- "Bagundi. Next." or "Not at offer level. Here's why…"
