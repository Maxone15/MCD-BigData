#!/bin/bash

# Verificar si se proporciona el número correcto de argumentos
if [ "$#" -ne 2 ]; then
  echo "Uso: $0 <base_dir> <hdfs_dest_dir>"
  exit 1
fi

# Obtener el directorio base y el directorio de destino HDFS desde los argumentos de la línea de comandos
base_dir="$1"
hdfs_dest_dir="$2"

# Verificar si el directorio base existe
if [ ! -d "$base_dir" ]; then
  echo "El directorio base '$base_dir' no existe."
  exit 1
fi

# Crear el directorio de destino HDFS si no existe
hdfs dfs -mkdir -p "$hdfs_dest_dir"

# Encontrar y copiar todos los archivos .csv a HDFS
find "$base_dir" -type f -name "*.csv" | while read -r csv_file; do
  echo "Copiando $csv_file a HDFS en $hdfs_dest_dir"
  hdfs dfs -copyFromLocal "$csv_file" "$hdfs_dest_dir"
done
