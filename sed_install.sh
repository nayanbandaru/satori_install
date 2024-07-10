#!/bin/bash

# Define the file to edit
file="/etc/needrestart/needrestart.conf"

# Use sed to uncomment the line and change the value
sed -i 's/^#\$nrconf{restart} = '\''i'\'';/\$nrconf{restart} = '\''a'\'';/' "$file"