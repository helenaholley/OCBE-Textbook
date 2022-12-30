import os
import cairosvg

# Get a list of all the .emf files in the current directory
emf_files = [f for f in os.listdir() if f.endswith('.emf')]

# Iterate over the list of files
for file in emf_files:
    # Convert the .emf file to a .png file
    cairosvg.svg2png(url=file, write_to=file.replace('.emf', '.png'))

print('Done!')

