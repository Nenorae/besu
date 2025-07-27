#!/bin/bash

# Script untuk memulai semua node Besu.

# Hentikan semua instance Besu yang sedang berjalan
echo "Menghentikan semua node Besu yang sedang berjalan..."
pkill -f besu
sleep 2

# Mulai setiap node dari 0 hingga 5
for i in {0..5}
do
  NODE_DIR="node$i"
  CONFIG_FILE="config-node$i.toml"
  LOG_FILE="node$i.log"
  
  if [ -d "$NODE_DIR" ]; then
    echo "Memulai $NODE_DIR..."
    cd "$NODE_DIR"
    nohup besu --config-file="$CONFIG_FILE" > "$LOG_FILE" 2>&1 &
    cd ..
    echo "$NODE_DIR telah dimulai."
  else
    echo "Direktori $NODE_DIR tidak ditemukan."
  fi
done

echo "Semua node telah dijalankan."
echo "Periksa file log (node*.log) di setiap direktori node untuk status."
