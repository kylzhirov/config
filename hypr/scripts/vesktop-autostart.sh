#!/bin/bash

sleep 3
# Change to your project directory
cd $HOME/Programs/Vesktop || exit

# Run pnpm start in the background
pnpm start &
