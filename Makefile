# Script for Programming system generation
all: komppl.exe kompassr.exe absloadm.exe
#komppl.o: komppl.c
#	gcc -o komppl.o komppl.c
komppl.exe: komppl.c
	@echo "________k o m p p l . e x e        g e n e r a t i o n______"
	gcc -m32 -g -o komppl.exe komppl.c
	@echo "____________________________________________________________"
kompassr.exe: kompassr.c
	@echo "________k o m p a s s r . e x e    g e n e r a t i o n______"
	gcc -m32 -g -o kompassr.exe kompassr.c
	@echo "____________________________________________________________"
absloadm.exe: absloadm.c
	@echo "________a b s l o a d m . e x e    g e n e r a t i o n______"
	gcc -m32 -g -o absloadm.exe absloadm.c /usr/lib/i386-linux-gnu/libncurses.so.5 /usr/lib/i386-linux-gnu/libtinfo.so.5
	@echo "____________________________________________________________"
clean:
	rm komppl.exe kompassr.exe absloadm.exe
