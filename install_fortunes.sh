#!/usr/bin/env bash

###
# This script parses the directory it is in and creates .dat files for
# each of the quote/maxim/fortune files in the directory. It then copies
# the quote/maxim/fortune file and it's .dat file to the correct
# directory. You can pass it a directory to copy the files to, if you do
# not provide a directory, the script will default to using:
# /usr/share/games/fortune
###
# AUTHOR: Michael Risser <mdrisser@gmail.com>
# DATE: 22-07-2026
###

# If this script was run by executing ./SCRIPTNAME, then we want to
# remove the ./ from the name that is stored in $0
SCRIPT=${0#./}

# Check to see if we were given a directory
# to copy the fortune files to, if not then
# use the 'standard' directory
FORTUNE_DIR=${1:-/usr/share/games/fortune}
echo -e "Preparing to create the .dat files and copy them to $FORTUNE_DIR..."

# Loop through all of the files in this directory
for f in *; do
  if [[ -f $f ]]; then
    case $f in
      # If the file is this script, or one of the
      # other two files, skip it
      $SCRIPT | "README.md" | "LICENSE")
        echo -e "Skipping $f"
        ;;

      *)
        # Create the .dat file
        echo -e "Creating $f.dat"
        strfile -c % $f "$f.dat"

        # Copy the files to the fortunes directory
        echo -e "Copying $f and $f.dat to $FORTUNE_DIR"
        sudo cp $f $FORTUNE_DIR
        sudo cp "$f.dat" $FORTUNE_DIR
        echo
    esac
  fi
done

echo -e "Operation complete"
echo
