#!/bin/bash


path='../../../output/BETAminus/'

function betaminus(){
    BETA minus -p "$1".bed -g hg38 -n "$1" -o "$path"
}

cd '../data/bed/'
for i in $(find . -iname "*.bed" -execdir grep -l "./" {} +)
do

  filename=(${i//./ })
  echo ${filename[0]}
  echo "Running BETA minus test"

  betaminus ${filename[0]}

done 
