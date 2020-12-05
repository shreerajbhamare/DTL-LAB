#!/bin/bash

for f in DDATA.txt
do
   while read -r GET
 do
    read -r User_Agent
    read -r Pragma
    read -r Cache_Control
    read -r Accept
    read -r Accept_Encoding
    read -r Accept_Charset
    read -r Language
    read -r Host
    read -r Cookie
    read -r Connection
    echo "$GET,$User_Agent,$Pragma,$Accept,$Cache_Control,$Accept_Encoding,$Accept_Charset,$Language,$Host,$Cookie,$Connection" >> output3file.csv
  done < "$f"
done
