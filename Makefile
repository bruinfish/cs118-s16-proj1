OBJS = 
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -lpthread $(DEBUG)
SERVER = web-server
CLIENT = web-client

all: $(SERVER) $(CLIENT)

$(SERVER).o: $(SERVER).cpp
	$(CC) $(CFLAGS) $(SERVER).cpp

$(CLIENT).o: $(CLIENT).cpp
	$(CC) $(CFLAGS) $(CLIENT).cpp

$(SERVER): $(OBJS) $(SERVER).o
	$(CC) $(OBJS) $(SERVER).o -o $(SERVER) $(LFLAGS)

$(CLIENT): $(OBJS) $(CLIENT).o
	$(CC) $(OBJS) $(CLIENT).o -o $(CLIENT) $(LFLAGS)

clean:
	rm -rf *.o $(SERVER) $(CLIENT)
