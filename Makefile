CC	= gcc
COPTS	= -DBIGENDIAN -O2
CLIBS	=

all: vdappc.c ppc_disasm.c ppc_disasm.h
	mkdir -p bin
	$(CC) $(COPTS) -o bin/vdappc vdappc.c ppc_disasm.c $(CLIBS)

clean:
	rm -f bin/vdappc