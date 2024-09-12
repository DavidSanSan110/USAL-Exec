
---

# 🚀 Compilación y Ejecución de Programas en C en Linux

Este documento te guiará paso a paso para instalar las herramientas necesarias y compilar/ejecutar un programa en C en un entorno Linux.

---

## 🛠️ Instalación de Herramientas de Desarrollo

Para poder compilar y ejecutar programas en C, necesitas instalar el compilador `gcc` y otras herramientas esenciales. Sigue estos pasos:

1. **Abre una terminal**.
2. **Actualiza los repositorios** y **instala las herramientas de desarrollo** con el siguiente comando:

   ```bash
   sudo apt update && sudo apt install build-essential
   ```

3. **Verifica que `gcc` se haya instalado correctamente** ejecutando:

   ```bash
   gcc --version
   ```

   Deberías ver algo como esto:

   ```
   gcc (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0
   ```

---

## 💻 ¿Cómo Compilar un Programa en C?

Para ejecutar un programa en C, primero necesitas compilarlo. Aquí te mostramos cómo hacerlo usando `gcc`.

### 1. Escribir el Código en C

Primero, asegúrate de tener un archivo con el código fuente en C. Por ejemplo, crea un archivo llamado `hola_mundo.c`:

```c
#include <stdio.h>

int main() {
    printf("¡Hola, Mundo!\n");
    return 0;
}
```

### 2. Compilar el Código

Para compilar tu archivo `hola_mundo.c`, usa el siguiente comando en la terminal:

```bash
gcc hola_mundo.c -o hola_mundo
```

- `hola_mundo.c`: Es el archivo que contiene tu código fuente en C.
- `-o hola_mundo`: Especifica el nombre del archivo ejecutable que se generará (en este caso, `hola_mundo`).

### 3. Ejecutar el Programa

Una vez compilado, puedes ejecutar tu programa con el siguiente comando:

```bash
./hola_mundo
```

Deberías ver el siguiente resultado en la terminal:

```
¡Hola, Mundo!
```

---

## 📂 Estructura del Proyecto

Tu directorio debe verse de la siguiente manera:

```
📁 mi-proyecto
├── hola_mundo.c   # Código fuente
└── hola_mundo     # Archivo ejecutable (después de compilar)
```

---

¡Y eso es todo! 🎉 Ya puedes compilar y ejecutar programas en C en tu sistema Linux.