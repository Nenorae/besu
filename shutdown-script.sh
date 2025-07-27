#!/bin/bash

# Script untuk menghentikan semua node Besu.

echo "Menghentikan semua node Besu yang sedang berjalan..."
pkill -f besu
sleep 2

echo "Semua node Besu telah dihentikan."
