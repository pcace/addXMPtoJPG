#!/bin/bash
FILES="$1/*.jpg"
for f in $FILES; do
  if [ -f "$f" ]; then
    echo "Processing $f file..."
    FILENAME="${f%%.*}"
    echo $FILENAME
    exiftool -overwrite_original_in_place -ext jpg -tagsFromFile "$FILENAME".xmp -@ xmp2exif.args -@ xmp2iptc.args '-all:all' '-FileCreateDate<XMP-photoshop:DateCreated' '-FileModifyDate<XMP-photoshop:DateCreated' "$FILENAME".jpg

  else
    echo "Warning: Some problem with \"$f\""
  fi

done
