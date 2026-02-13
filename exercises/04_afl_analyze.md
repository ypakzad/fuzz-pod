
# Exercise 4 — afl-analyze: find the interesting parts (5–10 minutes)

1) Pick an input (crash or queue):
   ```bash
   CRASH=$(ls runs/ex1/findings/default/queue/* | head -n1)
   ```

2) Run afl-analyze to see which bytes matter (edges-only to simplify):
   ```bash
   afl-analyze -e -i "$CRASH" -- ./targets/build/ex1_crash_on_token
   ```

3) Try a different input. What bytes flip coverage? Would you add tokens to a dictionary?
