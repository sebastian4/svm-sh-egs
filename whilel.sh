myvar=0
while [ $myvar -ne 6 ]
do
    echo $myvar
    myvar=$(( $myvar + 1 ))
done
