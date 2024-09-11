# ¿Qué es WSL?
WSL (Windows Subsystem for Linux) es una capa de compatibilidad para correr aplicaciones de Linux en Windows. WSL no es una máquina virtual, ni un emulador, es una capa de compatibilidad que permite correr aplicaciones de Linux en Windows. WSL permite correr un entorno de Linux en Windows, incluyendo la mayoría de las herramientas de línea de comandos, utilidades y aplicaciones que se pueden correr en una distribución de Linux.

# ¿Por qué es útil WSL en muchas asignaturas de la carrera?
En la carrera de ingeniería informática, muchas asignaturas requieren de un entorno de Linux para poder realizar las prácticas.
Las alternativas para poder trabajar con Linux en Windows son hacer una partición en el disco duro (que tiene la desventaja de tener que reiniciar el ordenador para cambiar de sistema operativo) o bien instalar una máquina virtual (que tiene la desventaja de consumir muchos recursos del ordenador).
WSL es una alternativa que permite correr un entorno de Linux en Windows sin necesidad de hacer una partición en el disco duro ni instalar una máquina virtual. Además, WSL permite correr un entorno de Linux en Windows de forma nativa, sin necesidad de instalar un sistema operativo adicional.
Otra ventaja de WSL es que permite familiarizarse con Linux, que es un sistema operativo muy utilizado en el ámbito de la informática y que es muy valorado por las empresas.
Por lo tanto, WSL es una herramienta muy útil para los estudiantes de ingeniería informática, ya que les permite trabajar con Linux de forma sencilla y sin necesidad de cambiar de sistema operativo.

# ¿Cómo se instala WSL?
Para instalar WSL en Windows 10 o Windows 11, podeís seguir la guía oficial de Microsoft: https://learn.microsoft.com/es-es/windows/wsl/install
Aun así, os dejo un resumen de los pasos a seguir para instalar WSL en Windows 10 o Windows 11:
1. Instalar la característica de Windows Subsystem for Linux:
    - Abrir PowerShell como administrador.
    - Ejecutar el siguiente comando:
    ```powershell
    wsl --install
    ```
    - Reiniciar el ordenador.
1. Por defecto, WSL instalará la distribución de Linux de Ubuntu. Si queréis instalar otra distribución de Linux, podéis hacerlo desde la Microsoft Store.
2. Configurar la distribución de Linux:
    - Abrir la distribución
    - Configurar un nombre de usuario y una contraseña (se requerirá para instalar paquetes y actualizar la distribución)
3. ¡Listo! Ya tenéis WSL instalado en vuestro ordenador.

Al abrir la terminal de Linux, se abrirá por defecto en la ruta base, con lo cual para acceder por ejemplo al escritorio de Windows habrá que ejecutar el siguiente comando (sustituyendo `<nombre_usuario>` por el nombre de usuario de Windows):
```bash
cd /mnt/c/Users/<nombre_usuario>/Desktop
```
o bien
```bash
cd /mnt/c/Users/<nombre_usuario>/OneDrive/Escritorio
```


