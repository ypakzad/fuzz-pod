
# Exercise 1 — Find your first crash (<10 minutes)

1) Build (already runs automatically on first launch)
   ```bash
   make -C targets all
   ```

2) Run a smoke test:
   ```bash
   ./scripts/00_smoketest.sh
   ```

3) Fuzz target 1:
   ```bash
   ./scripts/run_ex1.sh
   ```

4) Within ~10–60 seconds, you should see a crash file under:
   ```
   runs/ex1/findings/default/crashes/
   ```

5) Reproduce the crash:
   ```bash
   ./targets/build/ex1_crash_on_token < runs/ex1/findings/default/crashes/id:000000*
   ```

6) (Optional) Open the crashing input and explain *why* it crashes.
