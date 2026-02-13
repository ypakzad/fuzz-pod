
#!/usr/bin/env bash
set -euo pipefail
mkdir -p runs/ex2/input
echo "seed" > runs/ex2/input/seed.txt

afl-fuzz -i runs/ex2/input -o runs/ex2/findings -x targets/dictionaries/ex2.dict --       ./targets/build/ex2_two_tokens_trap
