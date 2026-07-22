# Christian Fortune
A collection of Christian quotes for the *nix fortune application.

# Installation
*These instructions assume that you already have fortune installed on your system*, If you do not have fortune installed, please refer to the instructions that you can find either on your distro's site or at https://github.com/shlomif/fortune-mod

## Scripted Installation
Simply run the included install_fortunes.sh script

## Manual Installation
If you would rather not run the included script, the following instructions are provided for you to install the fortune files manually.

1. Run `fortune -f` to determine where fortune is looking for its files (usually /usr/share/games/fortune; look for the line that starts with "100%")
2. **Create the .dat files**: `strfile -c % <quote-file> <quote-file>.dat` (***the .dat files are pointers and fortune will not find the maxims/quotes/fortunes without the associated .dat file***)
3. Copy the files to the location revealed above e.g. `sudo cp christian* /usr/share/games/fortune`
4. Run `fortune -f` again to verify the files are in the correct place and being seen.

# More Info
For more information, run `man fortune` or visit https://github.com/shlomif/fortune-mod
