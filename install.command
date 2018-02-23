#!/usr/bin/env bash

cd `dirname $0`

ONESHOT_PATH=$HOME/Library/Application\ Support/Steam/steamapps/common/OneShot

echo "Copy images to application..."
cp -rf ./images ./files/_______.app/Contents/Resources/

echo "Install OneShot apps to Steam directory..."
cp -f "./files/xScripts.rxdata" "$ONESHOT_PATH/Data"
cp -rf "./files/OneShot.app" "$ONESHOT_PATH/OneShot.app"
cp -rf "./files/_______.app" "$ONESHOT_PATH/_______.app"

echo "Done. Open $ONESHOT_PATH/OneShot.app to play OneShot."
open "$ONESHOT_PATH"
