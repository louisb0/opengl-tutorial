CC=gcc
CFLAGS=-Iinclude

# Link with OpenGL and GLFW libraries
LDFLAGS=-lglfw -ldl -lGL

# Define the source files and the target executable
SOURCES=src/glad.c src/main.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=main

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

.c.o:
	$(CC) -c $< -o $@ $(CFLAGS)

clean:
	rm -f src/*.o $(EXECUTABLE)
