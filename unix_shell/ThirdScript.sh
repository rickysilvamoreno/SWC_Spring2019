#!/bin/bash
#Cli ./ThirdScript.sh Data/ByCountry/Mexico.txt > HighestLED3.txt
#To get the highest life expectancy across years.

#usage: ./ThirdScript.sh input > output

#Define an input variable, $1 is a special variable that accepts value from command line
input=Data/ByCountry/*a.txt
output4=highestLEcountry.txt

#Command to get highest Life Expectancy from MExico
for output4 in input; do
cut -f1,3,4 $input |  sort -nk4 | tail -n1 >> output4; done

cat output4