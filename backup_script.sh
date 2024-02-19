#!/bin/bash

# Directorio a respaldar
directorio="/ruta/al/directorio"

# Directorio de destino para la copia de seguridad
directorio_destino="/ruta/del/directorio/de/respaldo"

# Nombre del archivo de copia de seguridad
nombre_archivo="backup_$(date +'%Y%m%d').tar.gz"

# Crear la copia de seguridad
tar -czvf "$directorio_destino/$nombre_archivo" "$directorio”
