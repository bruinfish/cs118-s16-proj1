OBJS = 
CC = g++
DEBUG = -g
CFLAGS = -Wall -c $(DEBUG)
LFLAGS = -lpthread $(DEBUG)
SERVER = web-server
CLIENT = web-client

all: $(SERVER) $(CLIENT)

$(SERVER).o:
	$(CC) $(CFLAGS) $(SERVER).cpp

$(CLIENT).o:
	$(CC) $(CFLAGS) $(CLIENT).cpp

$(SERVER): $(OBJS) $(SERVER).o
	$(CC) $(LFLAGS) $(OBJS) $(SERVER).o -o $(SERVER)

$(CLIENT): $(OBJS) $(CLIENT).o
	$(CC) $(LFLAGS) $(OBJS) $(CLIENT).o -o $(CLIENT)

clean:
	rm *.o $(SERVER) $(CLIENT)
