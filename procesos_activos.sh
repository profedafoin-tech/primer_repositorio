#!/usr/bin/env bash

set -euo pipefail

archivo="${1:-procesos_activos.txt}"

{
    printf 'Procesos activos en %s\n' "$(hostname)"
    printf 'Generado: %s\n\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')"
    ps -eo pid,ppid,user,stat,%cpu,%mem,etime,args --sort=-%cpu
} > "$archivo"

printf 'Listado de procesos guardado en: %s\n' "$archivo"
