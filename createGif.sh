#!/bin/bash
FILE=$1
FRAME_RATE=$2

FILE_NAME=${FILE%%.*} 
DEST_FILE="$FILE_NAME.gif"

if [[ -z $FRAME_RATE ]]; then
  FRAME_RATE=12
fi

ffmpeg -ss 00:00:00 -i "$FILE" -r $FRAME_RATE -vf scale=400:-1 "$DEST_FILE"

