#! /bin/bash

# shellcheck disable=SC2205
if (($# != 0)); then
  for n in "$@"
  do
    echo Installing: $n;
    sudo apt install -y $n;
    echo ----------------------------------------------------------------;
  done
  echo Cleaning up...;
  sudo apt autoremove -y;
else
  echo List of arguments is empty;
fi