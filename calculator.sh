#!/bin/bash

no1=$1
no2=$2
operation=$3

case $3 in
   1)
	      echo "I'll add $no1 & $no2"
        add
        ;;
   2)
        echo "I'll substract $no1 & $no2"
	      sub
        ;;
   3)
        echo "I'll multiply $no1 & $no2"
	      mul
        ;;   
   4)
        echo "I'll divide $no1 & $no2"
	      div
        ;;
   *)   echo "invalid inputes"
        echo "post build actions"
	echo "Ne lined added for testing"
	;;

esac
