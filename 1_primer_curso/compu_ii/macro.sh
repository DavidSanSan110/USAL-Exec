as6809 -o hola_mundo.asm
as6809 -l hola_mundo.asm
as6809 -o imprimir_cadena.asm
as6809 -l imprimir_cadena.asm
# Añade la pareja de ordenes para cada archivo adicional

aslink -s -m -w -b _CODE=0x100 hola_mundo.s19 hola_mundo.rel imprimir_cadena.rel # Añade el .rel de cada archivo adicional
m6809-run hola_mundo.s19