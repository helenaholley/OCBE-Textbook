#!/usr/bin/bash

for file in *.emf; do
  export_name=$(echo $file | sed 's/\.emf$/.png/');
  echo /Applications/Inkscape.app/Contents/MacOS/inkscape $file -o $export_name --export-dpi=300
  /Applications/Inkscape.app/Contents/MacOS/inkscape $file -o $export_name --export-dpi=300
done
