#!/bin/bash

no1=$1
no2=$2
operation=$3

case $3 in
   1)
	      echo "I'll add $no1 & $no2"
	      echo "adding a additon"
	      add=$(( $1 +$2 ))
	     echo "The addition is $add" 
        ;;
   2)
        echo "I'll substract $no1 & $no2"
	    sub=$(( $1 - $2 ))
	    echo "the sub is $sub"
        ;;
   3)
        echo "I'll multiply $no1 & $no2"
        ans=$(( $no1 * $no2 ))
        echo $ans
        ;;   
   4)
        echo "I'll divide $no1 & $no2"
	div=$(( $1 % $2 )) 
            echo "result is $div"
        ;;
   *)   echo "invalid inputes"
	;;

esac
