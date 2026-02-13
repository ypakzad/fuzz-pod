
#include <stdio.h>
#include <string.h>

int main(void) {
  char buf[8192] = {0};
  size_t n = fread(buf, 1, sizeof(buf)-1, stdin);
  (void)n;
  if (strstr(buf, "CRASHME") && strstr(buf, "XYZ")) {
    __builtin_trap(); // SIGILL for a clean, instant crash
  }
  return 0;
}
