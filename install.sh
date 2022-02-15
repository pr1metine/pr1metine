#!/bin/sh

SCRIPT_PATH="$( cd "$( dirname "$0")" ; pwd -P )"
TARGET="$( cd ; pwd -P)"

echo "$SCRIPT_PATH -> $TARGET"

for f in .config .ideavimrc .tmux.conf ; do
	echo "$TARGET/$f -> $SCRIPT_PATH/$f"
	rm -r $TARGET/$f || true
	ln -s $SCRIPT_PATH/$f $TARGET
done

echo "done!"
