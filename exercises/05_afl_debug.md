
# Exercise 5 — Debug a crash fast (5–10 minutes)

1) Grab a crash:
   ```bash
   CR=$(ls runs/ex1/findings/default/crashes/* | head -n1)
   ```

2) Run the helper:
   ```bash
   ./scripts/afl-debug ./targets/build/ex1_crash_on_token "$CR"
   ```

3) Read the backtrace. Where did it fault? Why?

Advanced:
- Rebuild with ASan by uncommenting `AFL_USE_ASAN=1` in `targets/Makefile`, re-`make`, re-run `afl-debug` to see clearer diagnostics.
