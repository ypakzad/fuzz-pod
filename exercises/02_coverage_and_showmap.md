
# Exercise 2 — Coverage with afl-showmap (5–10 minutes)

1) Measure coverage on a seed:
   ```bash
   printf "seed" | afl-showmap -o - -r -- ./targets/build/ex1_crash_on_token | sort -n | wc -l
   ```

2) Compare after you add characters "FUZZ":
   ```bash
   printf "FUZZ" | afl-showmap -o - -r -- ./targets/build/ex1_crash_on_token | sort -n | wc -l
   ```

3) Discuss: How did coverage change and why?
