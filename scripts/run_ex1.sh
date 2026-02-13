
#!/usr/bin/env bash
set -euo pipefail
mkdir -p runs/ex1/input
echo "AAAA" > runs/ex1/input/seed.txt

afl-fuzz -i runs/ex1/input -o runs/ex1/findings --       ./targets/build/ex1_crash_on_token
