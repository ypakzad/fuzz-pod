
# Exercise 6 — Triage & deduplicate with AFLTriage (10–15 minutes)

1) After fuzzing Ex2 for ~2–5 minutes, run:
   ```bash
   ./scripts/afl-triage runs/ex2/findings ./targets/build/ex2_two_tokens_trap -- @@
   ```

2) Open the generated `triage_reports_*` directory:
   - How many unique crashes?
   - What signals/sanitizers were involved?
   - What inputs reproduce them?

3) (Optional) Minimize one crash with `afl-tmin` and re-triage.
