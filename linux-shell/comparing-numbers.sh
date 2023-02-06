#!/bin/bash
read xNum
read yNum

arrValidations=($(($xNum > $yNum)) $(($xNum < $yNum)) $(($xNum == $yNum)))
arrMessages=("is greater than" "is less than" "is equal to")

for index in "${!arrValidations[@]}"
do
    condition=${arrValidations[$index]}
    if  (( $condition )) ; then
        echo X ${arrMessages[$index]} Y
    fi
done
