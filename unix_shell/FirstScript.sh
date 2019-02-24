#!/bin/bash

#To get the highest life expectancy across years.

#usage: ./FirstScript.sh

#Define an input variable
input=Data/ByCountry/Mexico.txt
output=HighestLE2.txt
#Command to get highest Life Expectancy from MExico
cut -f1,3,4 $input |  sort -nk4 | tail -n1 > output