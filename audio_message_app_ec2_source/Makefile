# c++ project
CC=g++
LIBS=-lsfml-system -lsfml-network
DEFS=EC2_INSTANCE

# examples to compile
MAIN=main
REC=recorder
PLBK=player
COM=common

# header file to ensure consistancy between LP and EC2
NTWK=network

OBJS=$(REC).o $(PLBK).o $(COM).o
 
$(MAIN): $(OBJS) $(MAIN).cc
	$(CC) -D$(DEFS) -o $(MAIN) $(MAIN).cc $(OBJS) $(LIBS)

$(REC).o: $(REC).cc $(REC).h $(NTWK).h $(COM).o
	$(CC) -D$(DEFS) -c -o $(REC).o $(REC).cc $(LIBS)

$(PLBK).o: $(PLBK).cc $(PLBK).h $(NTWK).h $(COM).o
	$(CC) -D$(DEFS) -c -o $(PLBK).o $(PLBK).cc $(LIBS)

$(COM).o: $(COM).cc $(COM).h $(NTWK).h
	$(CC) -D$(DEFS) -c -o $(COM).o $(COM).cc
 
clean:
	rm -f core *.o $(MAIN)
