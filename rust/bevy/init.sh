#!/bin/sh

echo "====================================="
echo "Setting up git"
echo "====================================="
git init
git add * .envrc .gitignore
git reset -- init.sh
echo "====================================="
echo "Generating flake lockfile"
echo "====================================="
nix flake update
git add flake.lock Cargo.lock
git commit -m "Initial commit"
echo "====================================="
rm init.sh;
echo "Finished initializing project"
echo "Enter a dev shell by running 'nix develop .' from within this directory."
echo "You can run the application by running `nix run .`."
echo "If you have direnv, run 'direnv allow' to automatically set up the development environment when in this folder."
