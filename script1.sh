#!/bin/bash

if ping -c 4 google.com > /dev/null 2>&1; then
    echo "Conectado a internet resolución dns exitosa"
else
    echo "No hay conexión a internet o fallo en la resolución dns"
fi  