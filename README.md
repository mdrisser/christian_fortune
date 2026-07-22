# Christian Fortune
A collection of Christian quotes for the fortune application.

# Installation
*These instructions assume that you already have fortune installed on your system*
1. Run `fortune -f` to determine where fortune is looking for its files
2. Create the .dat files: `strfile -c % <quote-file> <quote-file>.dat`
3. Copy the files to the location revealed above e.g. `sudo cp christian* /usr/share/games/fortune`
4. Run `fortune -f` again to verify the files are in the correct place and being seen.

# More Info
For more information, run `man fortune`
