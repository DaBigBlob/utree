
CC = zig cc -static
CFLAGS = -nostdinc -nostdlib -O3 -Wall -Wextra -Wfatal-errors -fno-unwind-tables -fdata-sections -fno-stack-protector -fno-builtin -std=c89 -pedantic -Wno-strict-prototypes -Wl,-e,__sys_entry

ENTRY = src/sys/entry.c
BIN = bin/
NAME = utree

_PRINTER = printf
_MKDIR = mkdir -p

build: ${ENTRY}
	@${_MKDIR} ${BIN}
	${CC} ${ENTRY} ${BFLAGS} ${CFLAGS} -o ${BIN}${NAME}
	@${_PRINTER} "built to: ${BIN}${NAME}\n"

clean: ${BIN}
	rm -rf ${BIN}

test: build
	@${_PRINTER} "running: ${BIN}${NAME}\n" 
	${BIN}${NAME} ${TA}