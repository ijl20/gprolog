#! /usr/bin/ksh

let n=0
while [[ n -lt $2 ]]
do
  pentbook_cut_c $2 $n $1 | grep completed >>$3
  let n=n+1
done
