CC = gcc
CFLAGS = -Wall
SRCS = Time_in_a_bottle.c
OBJS = $(SRCS:.c=.o)
TARGET = Time_in_a_bottle

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)
