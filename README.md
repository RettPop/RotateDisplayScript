# RotateDisplayScript
Bash script to rotate display screen from CLI. Tested on Ubuntu 16.04.1 LTS. 
Usage:
rotateDisplay.sh <display name>

Default display name is DP3 (as on my workstation). Rotation is switched between left and normal.
Current screen orientation retreived by parsing xrand output. It can be little different depends on if pointed screen is primary or not.
