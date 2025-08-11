#!/bin/bash
for i in {0..5}
do
  NODE_DIR="node$i"
  if [ -d "$NODE_DIR" ]; then
    rm -rf "$NODE_DIR/data/caches"/*
    rm -rf "$NODE_DIR/data/database"/*
    rm -rf "$NODE_DIR/data/fastsync"/*
    echo "Data for $NODE_DIR has been reset."
  else
    echo "Directory $NODE_DIR not found."
  fi
done
