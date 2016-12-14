#!/bin/bash

rand=0
reponse=0

trap rand=7 7
trap reponse=1 1 2 3 4 5 6

pidEtud(){
	pid=`pgrep etud.sh`
}

question(){
	sleep 2
	echo "Combien de jours y a-t-il dans la semaine"
	pid=$(pidEtud)
	kill -10 $pid
}

bravo(){
	echo "Félicitation"
	pid=$(pidEtud)
	kill -SIGTERM $pid
	exit 0
}

recommence(){
	echo "C'est pas la bonne reponse"
}

proc=$(pidEtud)
if [ a$proc=a ]
then
	./etud.sh&
fi
while [$rand -ne 7]
do
	reponse=0
	question
	while [$reponse -eq 0]
	do
		sleep 1
	done
	sleep 2
	recommence
done
bravo