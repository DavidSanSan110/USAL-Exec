# Nombre del compilador
CC = gcc

# Opciones del compilador (puedes añadir más si necesitas)
CFLAGS = -Wall -Wextra -g

# Archivos de origen y ejecutable
SOURCES = programa.c lib.c
OBJECTS = programa.o lib.o
EXECUTABLE = programa

# Regla para compilar el programa
$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $(OBJECTS)

# Regla para compilar los archivos .o
programa.o: programa.c lib.h
	$(CC) $(CFLAGS) -c programa.c

lib.o: lib.c lib.h
	$(CC) $(CFLAGS) -c lib.c

# Regla para limpiar los archivos generados
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
