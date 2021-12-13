#!/bin/bash

function readMessage() {
        openssl enc -aes-256-cbc -iter 1000 -d -pass pass:$PASS -in message.txt.enc -out message.txt
        value=$(<message.txt)
        echo $value
	rm message.txt
}

echo PID: $$
echo enter companion PID
read companion

PASS=1234

trap 'readMessage' USR1

while true
do
	read mes
        echo $mes > message.txt
	openssl enc -aes-256-cbc -iter 1000 -salt -pass pass:$PASS -in message.txt -out message.txt.enc
	rm message.txt
        kill -USR1 $companion
done
