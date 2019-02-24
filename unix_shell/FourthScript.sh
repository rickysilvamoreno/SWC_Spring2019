#!/bin/bash
#Cli ./ThirdScript.sh Data/ByCountry/Mexico.txt > HighestLED3.txt
#To get the highest life expectancy across years.

#usage: ./ThirdScript.sh input > output

#Define an input variable, $1 is a special variable that accepts value from command line
input=Data/ByCountry/*s.txt
output5=highestLEcountry.txt

#Command to get highest Life Expectancy from MExico
for file in $input; do
cut -f1,3,4 $file |  sort -nk1 | tail -n1; done

