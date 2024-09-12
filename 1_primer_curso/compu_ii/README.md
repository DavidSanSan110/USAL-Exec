
---

# 🖥️ Programación en as6809 (Ensamblador 6809)

Este documento te guiará en la instalación del entorno de desarrollo para **as6809** en la terminal **WSL (Ubuntu)**, así como la compilación y ejecución de programas en ensamblador. Se incluyen ejemplos básicos como un "Hola Mundo" y el uso de una subrutina.

---

## 🚀 Instalación de as6809 en WSL (Ubuntu)

1. **Abrir la terminal WSL (Ubuntu)**. Si no tienes WSL instalado, sigue [esta guía](https://learn.microsoft.com/es-es/windows/wsl/install).

2. **Actualizar los paquetes del sistema**:
   ```bash
   sudo apt-get update
   ```

3. **Instalar la librería libc6-i386** (necesaria para correr las herramientas):
   ```bash
   sudo apt-get install libc6-i386
   ```

4. **Descargar e instalar los ejecutables as6809, aslink y m6809-run**:
   ```bash
   sudo wget -P "/bin/" "http://avellano.usal.es/~compii/as6809" "http://avellano.usal.es/~compii/aslink" "http://avellano.usal.es/~compii/m6809-run"
   sudo chmod +x "/bin/as6809" "/bin/aslink" "/bin/m6809-run"
   ```

> Durante el proceso de instalación, se te pedirá ingresar la contraseña de tu usuario y aceptar algunos pasos con "yes or no". Asegúrate de aceptarlos para continuar con la instalación.

---

## 📂 Ejemplos: Hola Mundo y Subrutina

El siguiente ejemplo muestra cómo escribir un programa en ensamblador 6809 y utilizar una subrutina para imprimir una cadena en pantalla.

### **Archivo: `hola_mundo.asm`**
Este archivo imprime el texto "Hola Mundo" en la pantalla.

```asm
.module hola_mundo
.globl  main
.globl  imprimir_cadena

fin		    .equ	0xFF01
pantalla	.equ 	0xFF00

saludo:
    .asciz  "\nHola mundo\n"

main:
    ldx     #saludo
    jsr     imprimir_cadena
    lda     #0
    sta     pantalla
    clra
    sta     fin

    .area   FIJA(ABS)
    .org    0xFFFE
    .word   main
```

### **Archivo: `imprimir_cadena.asm`**
Este archivo contiene la subrutina `imprimir_cadena` utilizada por el programa `hola_mundo.asm`.

```asm
.module imprimir_cadena
imprimir_cadena:
    ; Código de la subrutina
    rts
```

---

## 🔧 Compilación y Ejecución

Para compilar y ejecutar los programas en **as6809**, se utiliza un script llamado **`macro.sh`**, que automatiza la compilación y el enlace de los archivos.

### **Ejemplo de archivo `macro.sh`**:
```bash
# Compilación de archivos ASM a formato .rel
as6809 -o hola_mundo.asm
as6809 -l hola_mundo.asm
as6809 -o imprimir_cadena.asm
as6809 -l imprimir_cadena.asm
# Añadir líneas adicionales para cualquier otro archivo .asm

# Enlace de archivos .rel a .s19 ejecutable
aslink -s -m -w -b _CODE=0x100 hola_mundo.s19 hola_mundo.rel imprimir_cadena.rel
# Añadir los archivos .rel adicionales aquí

# Ejecución del programa ensamblado
m6809-run hola_mundo.s19
```

### **Pasos para compilar y ejecutar**:

1. Crea un archivo llamado **`macro.sh`** y copia el contenido anterior en él.
2. Asigna permisos de ejecución al archivo `macro.sh`:
   ```bash
   chmod +x macro.sh
   ```
3. Ejecuta el script para compilar y ejecutar el programa:
   ```bash
   sh macro.sh
   ```

Este proceso compilará los archivos `.asm` a `.rel`, enlazará los archivos con **aslink** y finalmente ejecutará el programa con **m6809-run**.

---

## 🎉 ¡Ya está! Has completado la instalación, compilación y ejecución de programas en **as6809**.

Este `README` proporciona una guía clara para comenzar a programar en ensamblador 6809, con un ejemplo de "Hola Mundo" y una subrutina.