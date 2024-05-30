#!/bin/bash

# Nombre para la nueva pestaña
terminal1="Enumeracion"
terminal2="Apuntes"
terminal3="Notas"
terminal4="Ataques"
# Abrir una nueva pestaña en kitty y ejecutar un comando para cambiar el título
read -p "Ingresa el nombre del directorio: " machine_dir
kitty @ launch --type=tab --title "$nombre" bash -c 'echo -ne "\033]2;'"$terminal1"'\007"; cd /home/isra/pentest/maquinas/tryhackme/ctf/ && mkdir -p '"$machine_dir"' ; cd /home/isra/pentest/maquinas/tryhackme/ctf/'"$machine_dir"' && mkdir nmap && mkdir content && mkdir exploit; exec bash'  
#Antes de ejecutar algun otro comando en la terminal que se habra hay que poner un ';' y debe ser antes de exec bash
#Las variables deben ir en comilla doble y comilla simple
kitty @ launch --type=tab --title "$nombre" bash -c 'echo -ne "\033]2;'"$terminal2"'\007"; exec bash'
kitty @ launch --type=tab --title "$nombre" bash -c 'echo -ne "\033]2;'"$terminal3"'\007"; cd /home/isra/pentest/maquinas/tryhackme/ctf/'"$machine_dir"'; cd content && touch notas.txt; echo "Puertos abiertos: " > notas.txt && nano notas.txt;  exec bash'
kitty @ launch --type=tab --title "$nombre" bash -c 'echo -ne "\033]2;'"$terminal4"'\007"; exec bash'
