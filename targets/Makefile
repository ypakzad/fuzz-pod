
CC ?= afl-cc
CFLAGS ?= -O2 -g

# Optional: enable ASan for clearer triage
# export AFL_USE_ASAN=1

OUTDIR := build
SRCS := ex1_crash_on_token.c ex2_two_tokens_trap.c
BINS := $(SRCS:%.c=$(OUTDIR)/%)

all: $(OUTDIR) $(BINS)

$(OUTDIR):
	mkdir -p $(OUTDIR)

$(OUTDIR)/%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -rf $(OUTDIR)
