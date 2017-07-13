#!/bin/bash

FILE="$1"
BASE="${FILE%%.*}"

convert -resize 1275 -colorspace gray -ordered-dither h4x4a "$FILE" "$BASE"_gris.png
convert -resize 1275 -colorspace srgb -ordered-dither h4x4a "$FILE" "$BASE"_color.png
