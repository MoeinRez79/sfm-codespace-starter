#!/bin/bash
echo "🔧 Configuring project..."
mkdir -p build && cd build
cmake ..
echo "🧱 Building..."
make
echo "🔍 Running matcher_app..."
./matcher_app ../3dp_cam.yml ../ .output.txt 1.1
echo "📐 Running sfm_app..."
./sfm_app ../.output.txt output.ply
echo "✅ Done. Download 'output.ply' to view in MeshLab."
