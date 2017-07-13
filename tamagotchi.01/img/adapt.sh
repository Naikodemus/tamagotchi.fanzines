#!/bin/bash

FILE="$1"
BASE="${FILE%%.*}"
WIDTH="$(identify -format "%w" "$FILE")"

if [ "$WIDTH" -gt 1275 ]; then
#	convert -resize 1275 -colorspace cmyk -ordered-dither h4x4a "$FILE" cmyk_"$BASE".png
	convert -resize 1275 -colorspace gray -ordered-dither h4x4a "$FILE" "$BASE"_gris.png
	convert -resize 1275 -colorspace srgb -ordered-dither h4x4a "$FILE" "$BASE"_color.png
else
#	convert -colorspace cmyk -ordered-dither h4x4a "$FILE" cmyk_"$BASE".png
	convert -colorspace gray -ordered-dither h4x4a "$FILE" "$BASE"_gris.png
	convert -colorspace srgb -ordered-dither h4x4a "$FILE" "$BASE"_color.png

fi
