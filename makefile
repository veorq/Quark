CC=gcc
CFLAGS= -Wall
BIN  =  uquark_test dquark_test squark_test cquark_test\
        uquark_test_debug dquark_test_debug\
	squark_test_debug cquark_test_debug

all:	$(BIN)

uquark_test:	      quark.c main.c
		      $(CC) $(CFLAGS) -DUQUARK $^ -o $@

dquark_test:	      quark.c main.c
		      $(CC) $(CFLAGS) -DDQUARK $^ -o $@

squark_test:	      quark.c main.c
		      $(CC) $(CFLAGS) -DSQUARK $^ -o $@

cquark_test:	      quark.c main.c
		      $(CC) $(CFLAGS) -DCQUARK $^ -o $@

uquark_test_debug:    quark.c main.c
		      $(CC) $(CFLAGS) -DUQUARK -DDEBUG $^ -o $@

dquark_test_debug:    quark.c main.c
		      $(CC) $(CFLAGS) -DDQUARK -DDEBUG $^ -o $@

squark_test_debug:    quark.c main.c
		      $(CC) $(CFLAGS) -DSQUARK -DDEBUG $^ -o $@

cquark_test_debug:    quark.c main.c
		      $(CC) $(CFLAGS) -DCQUARK -DDEBUG $^ -o $@
clean:
		rm -fr *.o $(BIN)

dist:		clean
		cd ..; \
		tar zcf Quark-`date +%Y%m%d%H%M`.tgz Quark/*

