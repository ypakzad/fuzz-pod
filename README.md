
# Fuzzing in 15 Minutes — AFL++ (Codespaces)

**One-click launch (replace OWNER/REPO after you import this repo):**

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/OWNER/REPO?quickstart=1)

No local installs. No Docker. No hypervisor. Just fuzz — in your browser.

## Quick Start
```bash
make -C targets all
./scripts/00_smoketest.sh
./scripts/run_ex1.sh
```

Look for crashes in `runs/ex1/findings/default/crashes/` and reproduce:
```bash
./targets/build/ex1_crash_on_token < runs/ex1/findings/default/crashes/id:000000*
```

## Exercises
- `exercises/01_quickstart.md`
- `exercises/02_coverage_and_showmap.md`
- `exercises/03_dictionary_and_seeds.md`
- `exercises/04_afl_analyze.md`
- `exercises/05_afl_debug.md`
- `exercises/06_afl_triage.md`

## Notes
- This repo builds AFL++ from source inside a devcontainer.
- `scripts/afl-debug` is a lightweight helper around GDB for quick stack traces.
- `scripts/afl-triage` wraps `afltriage` for batch crash dedup & reports.
