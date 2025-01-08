#!/bin/bash

MOVIES=("RRR" "Anand" "godavari")

#size of above array is 3.
#index are 0,1,2

#list always starts with 0

echo "first movie is: ${MOVIES[0]}"
echo "first movie is: ${MOVIES[1]}"
echo "first movie is: ${MOVIES[@]}"