#ifndef ENTRY
#define ENTRY

#include "../main.c"

void sys_entry() __asm__ ("__sys_entry");
void sys_entry() {
    prog_main(0, 0);
}
 
#endif
