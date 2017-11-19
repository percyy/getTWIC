#!/bin/bash
# A simple script to
mytwic=http://www.theweekinchess.com/zips/twic
touch twic$1_$2.pgn
mypgn="g.pgn"
myend="g.zip"
counter=$1
until [ $counter -gt $2 ]
do
    echo $counter
    getvar=$mytwic$counter$myend
    echo $getvar
    wget $getvar
    unzip ./twic$counter$myend -d ./
    cat ./twic$counter".pgn" >> twic$1_$2.pgn
    rm ./twic$counter".pgn"
    rm ./twic$counter$myend
    ((counter++))
done
