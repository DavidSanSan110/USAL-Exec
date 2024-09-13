
---

# 📄 Proyecto con Makefile en C

Este README te guiará para instalar `make`, crear un archivo `Makefile`, y utilizarlo para compilar tu proyecto en sistemas Ubuntu/Debian.

---

## 🛠️ Instalación de Make en Ubuntu/Debian

Sigue estos pasos para instalar `make` en tu sistema Linux basado en Ubuntu o Debian:

1. **Abre una terminal**.
2. **Actualiza los repositorios**:

   ```bash
   sudo apt update
   ```

3. **Instala las herramientas de compilación**:

   ```bash
   sudo apt install build-essential
   ```

4. **Verifica la instalación** ejecutando:

   ```bash
   make --version
   ```

   Deberías ver algo como esto:

   ```
   GNU Make 4.2.1
   Built for x86_64-pc-linux-gnu
   ```

---

## 📝 Creación de un archivo Makefile

Un archivo `Makefile` define las reglas de compilación de tu proyecto en C. Aquí tienes un ejemplo sencillo para un proyecto con tres archivos: `lib.c`, `lib.h`, y `programa.c`.

1. **Crea un archivo llamado `Makefile`** en el directorio raíz de tu proyecto.
2. **Añade el siguiente contenido** al archivo:

   ```makefile
   # Nombre del compilador
   CC = gcc

   # Opciones del compilador
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
   ```

---

## 🚀 Cómo usar el Makefile

Una vez que tienes tu `Makefile` creado, puedes compilar y limpiar tu proyecto fácilmente desde la terminal:

1. **Compilar tu proyecto** ejecutando:

   ```bash
   make
   ```

   Esto generará los archivos objeto (`.o`) y el ejecutable (`programa`).

2. **Limpiar los archivos generados** usando:

   ```bash
   make clean
   ```

   Esto eliminará los archivos `.o` y el ejecutable, dejando tu directorio limpio.

---

## 💻 Ejecución del proyecto

Para ejecutar tu programa compilado, simplemente escribe:

```bash
./programa
```

Esto ejecutará tu programa y mostrará la salida en la terminal.

---

## 📂 Estructura del Proyecto

Tu proyecto debe verse más o menos así:

```
📁 mi-proyecto
├── lib.c
├── lib.h
├── programa.c
└── Makefile
```

---

¡Y eso es todo! 🎉 Ahora puedes usar `make` para compilar fácilmente tu proyecto en C.