
---

# 🚀 Multiplicador Básico en Verilog

Este proyecto consiste en un **multiplicador básico** implementado en Verilog, junto con un módulo de prueba para simular su funcionamiento. Aquí te mostramos cómo instalar las herramientas necesarias, compilar y ejecutar el código Verilog.

---

## 🛠️ Instalación de Herramientas para Verilog

Para trabajar con Verilog en Linux, usaremos **Icarus Verilog** (`iverilog`), una herramienta gratuita para compilar y simular archivos Verilog.

### Pasos para instalar Icarus Verilog en Ubuntu/Debian:

1. **Abre una terminal**.
2. **Actualiza los repositorios** y **instala Icarus Verilog**:

   ```bash
   sudo apt update && sudo apt install iverilog
   ```

3. **Verifica la instalación** ejecutando el siguiente comando:

   ```bash
   iverilog -v
   ```

   Deberías ver algo como esto:

   ```
   Icarus Verilog version 11.0 (stable)
   ```

---

## 📄 Código Verilog: Multiplicador y Módulo de Prueba

Este es el código de un **multiplicador de 3 bits** en Verilog que se encuentra en el archivo `multiplicador.v`. Además, incluye un módulo de prueba para simular cómo funciona.

### Módulo multiplicador (`multiplicador.v`):

```verilog
module multiplicador (input [2:0] a, b, output [6:0] c);
    assign c = a * b;
endmodule

module test;
    reg [2:0] a, b;
    wire [6:0] c;
    multiplicador m1 (a, b, c);
    initial begin
        a = 4'b000;
        b = 4'b000;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b001;
        b = 4'b001;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b010;
        b = 4'b010;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b011;
        b = 4'b011;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b100;
        b = 4'b100;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b101;
        b = 4'b101;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b110;
        b = 4'b110;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        a = 4'b111;
        b = 4'b111;
        $monitor($time, " a=%b b=%b c=%b", a, b, c);
        #10;
        $finish;
    end
endmodule
```

---

## 🔧 Compilar y Simular el Código Verilog

Sigue estos pasos para compilar y simular el programa en Verilog:

### 1. Crear el Archivo Verilog

Guarda el código anterior en un archivo llamado `multiplicador.v`:

```bash
nano multiplicador.v
```

Pega el código en el archivo y guárdalo.

### 2. Compilar el Código

Compila el archivo Verilog usando `iverilog`:

```bash
iverilog -o multiplicador multiplicador.v
```

- `-o multiplicador`: Especifica el nombre del archivo binario que se generará.

### 3. Ejecutar la Simulación

Una vez compilado, ejecuta el simulador para ver los resultados:

```bash
vvp multiplicador
```

Verás la salida en la terminal mostrando el tiempo y los valores de `a`, `b`, y `c` a medida que cambia el valor de las entradas:

```
0 a=000 b=000 c=0000000
10 a=001 b=001 c=0000001
20 a=010 b=010 c=0000100
30 a=011 b=011 c=0001001
40 a=100 b=100 c=0010000
50 a=101 b=101 c=0011001
60 a=110 b=110 c=0100100
70 a=111 b=111 c=0110001
```

### 4. Limpiar Archivos Generados

Para eliminar los archivos generados tras la compilación, usa:

```bash
rm multiplicador
```

---

## 📂 Estructura del Proyecto

Tu directorio debe verse así:

```
📁 mi-proyecto
└── multiplicador.v   # Código Verilog del multiplicador
```

---

¡Y eso es todo! 🎉 Ahora puedes compilar y ejecutar simulaciones de tu multiplicador en Verilog.