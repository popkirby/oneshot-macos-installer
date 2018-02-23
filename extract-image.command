#!/usr/bin/env bash

cd `dirname $0`

ONESHOT_PATH=$HOME/Library/Application\ Support/Steam/steamapps/common/OneShot

echo "Uncompressing exe..."
./bin/upx -d -o ./uncompressed.exe "$ONESHOT_PATH/_______.exe"

echo "Extract images from exe..."
./bin/extract-bmp

echo "Convert bitmap images to png..."

for bmp in ./images/*.bmp; do
  ./bin/convert "$bmp" -alpha on -transparent "#00ff00" "./images/$(basename "$bmp" .bmp).png"
done

echo "Removing bitmap images..."
rm ./images/*.bmp

echo "Done."
