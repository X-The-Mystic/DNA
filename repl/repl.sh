#!/bin/bash
echo "" > ./repl/tmp.dna;

while [ true ]
do
  read -p "> " cmd;
  if [ "$cmd" == ".clear" ]; then
    echo "" > ./repl/tmp.dna;
    clear;
    echo "[cleared]";

  elif [ "$cmd" == ".exit" ]; then
    exit 0;
  elif [ "$cmd" == ".read" ]; then
    cat ./repl/tmp.dna;
  else
    echo $cmd >> ./repl/tmp.dna;
    echo " -- ";
    ./DNA ./repl/tmp.dna;
  fi
done