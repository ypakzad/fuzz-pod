
#!/usr/bin/env bash
set -euo pipefail
echo "[+] AFL++ version:"
afl-fuzz -V 2>/dev/null | head -n 1 || true

echo "[+] afl-showmap smoke:"
printf "seed" | afl-showmap -o /dev/null -r -- /bin/cat >/dev/null
echo "[+] OK"
