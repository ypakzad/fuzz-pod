
#include <stdio.h>
#include <unistd.h>

int main(void) {
  char buf[4096];
  ssize_t len = read(0, buf, sizeof(buf));
  if (len <= 0) return 0;

  if (len >= 4 && buf[0]=='F' && buf[1]=='U' && buf[2]=='Z' && buf[3]=='Z') {
    volatile char *p = 0; // deterministic segfault
    *p = 1;
  }
  return 0;
}
