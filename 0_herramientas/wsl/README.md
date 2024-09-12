
---

# 💻 ¿Qué es WSL?

**WSL (Windows Subsystem for Linux)** es una capa de compatibilidad que permite ejecutar aplicaciones de **Linux** directamente en **Windows**. A diferencia de una máquina virtual o un emulador, **WSL** te permite correr herramientas de línea de comandos, utilidades y aplicaciones Linux sin necesidad de reiniciar o cambiar de sistema operativo.

---

## 🚀 ¿Por qué es útil WSL en muchas asignaturas de la carrera?

En varias asignaturas de la carrera de ingeniería informática, es necesario trabajar en un entorno **Linux** para realizar prácticas. Algunas alternativas tradicionales incluyen:

- **Particionar el disco duro**: lo que requiere reiniciar el sistema para cambiar entre Windows y Linux.
- **Máquinas virtuales**: que consumen muchos recursos del sistema.

**WSL**, en cambio, te permite tener un entorno Linux completamente funcional en tu **Windows** sin necesidad de instalar sistemas operativos adicionales ni sacrificar rendimiento. Algunas ventajas clave son:

- Puedes ejecutar programas de **Linux** directamente en **Windows**.
- Es una excelente manera de **familiarizarte con Linux**, un sistema operativo muy valorado en el campo de la informática y por muchas empresas.
- **Fácil integración** entre archivos y aplicaciones de Linux y Windows.

Por estas razones, **WSL es una herramienta esencial** para los estudiantes de ingeniería informática.

---

## 🔑 Habilitar la Virtualización y **Hyper-V**

Antes de instalar WSL, es necesario habilitar la **virtualización** y **Hyper-V** en tu equipo. **Hyper-V** es la tecnología de virtualización nativa de Windows que permite a WSL funcionar correctamente. Sigue estos pasos para asegurarte de que la virtualización está activada:

1. **Habilitar Hyper-V**:
    - Abre **PowerShell** como administrador.
    - Ejecuta el siguiente comando:
      ```powershell
      Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
      ```
    - Reinicia tu computadora.

    Si necesitas más detalles, puedes consultar la [guía oficial para habilitar Hyper-V en Windows](https://learn.microsoft.com/es-es/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v).

2. **Habilitar la Virtualización desde la BIOS** (si es necesario):
    - En algunos casos, es posible que necesites cambiar un parámetro en la **BIOS** para activar la virtualización.
    - Sigue esta [guía para habilitar la virtualización en la BIOS](https://support.microsoft.com/es-es/windows/habilitar-la-virtualización-en-windows-c5578302-6e43-4b4b-a449-8ced115f58e1).

---

## 🛠️ ¿Cómo instalar WSL?

Una vez habilitada la virtualización y **Hyper-V**, puedes proceder a instalar **WSL**. Puedes seguir la [guía oficial de Microsoft](https://learn.microsoft.com/es-es/windows/wsl/install), pero aquí te dejamos un resumen de los pasos:

### Pasos para Instalar WSL:

1. **Activar la característica WSL**:
    - Abre **PowerShell** como administrador.
    - Ejecuta el siguiente comando:
      ```powershell
      wsl --install
      ```
    - Reinicia tu ordenador cuando se te indique.

2. **Seleccionar la distribución de Linux**:
    - Por defecto, **Ubuntu** será la distribución instalada, pero puedes elegir otras desde la **Microsoft Store**.

3. **Configurar la distribución**:
    - Abre la distribución de Linux.
    - Establece un nombre de usuario y contraseña (necesarios para instalar paquetes y realizar actualizaciones).

4. **¡Listo!** Ya tienes WSL instalado y puedes comenzar a trabajar.

### Acceder a Archivos de Windows desde Linux:

Para acceder a tus archivos de Windows (por ejemplo, el escritorio), usa el siguiente comando en la terminal de Linux (ten en cuenta que la ruta puede variar según tu configuración de idioma, por ejemplo, `Users` o `Usuarios` y `Desktop` o `Escritorio`):

```bash
cd /mnt/c/Users/<nombre_usuario>/Escritorio
```

O si tienes tu escritorio en **OneDrive**:

```bash
cd /mnt/c/Users/<nombre_usuario>/OneDrive/Escritorio
```

---

## ⚙️ Recomendaciones

- Asegúrate de tener siempre las últimas actualizaciones de **Windows** y **WSL** para un rendimiento óptimo.
- Familiarízate con comandos básicos de **Linux** para aprovechar al máximo tu entorno de desarrollo.

---

¡Con **WSL** podrás hacer mucho más en **Windows** y con la flexibilidad de **Linux** sin complicaciones! 🎉

--- 

Este formato incluye los pasos necesarios de manera ordenada y clara para habilitar la virtualización y WSL.