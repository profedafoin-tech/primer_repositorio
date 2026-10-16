#!/bin/bash
# Este script verifica la conectividad a internet mediante un ping a google.com
# Si la conexión es exitosa, se imprime un mensaje indicando que la resolución DNS fue exitosa
# Si la conexión falla, se imprime un mensaje indicando que no hay conexión a internet o que la resolución DNS falló
if ping -c 4 google.com > /dev/null 2>&1; then
    echo "Conectado a internet resolución dns exitosa"
else
    echo "No hay conexión a internet o fallo en la resolución dns"
fi  