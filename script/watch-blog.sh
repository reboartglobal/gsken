#!/bin/bash

echo "👀 Memantau perubahan di folder content/blog/..."
echo "Setiap file .md baru akan otomatis terdeteksi!"
echo ""

# Watch folder content/blog untuk file baru
while true; do
  # Cek jumlah artikel
  COUNT=$(find content/blog -name "*.md" ! -name "_index.md" | wc -l)
  echo "$(date '+%H:%M:%S') - $COUNT artikel terdeteksi"
  
  sleep 5
done