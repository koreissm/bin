#!/bin/bash

pidProf(){
	ps -ef | grep -v grep | grep prof.sh |awk -F " " '{ print $2 }'
}

cherche(){
	nombre=$RANDOM
	let "nombre %= 7"
	let "nombre += 1"
	echo "Réponse : $nombre"
	pid=$(pidProf)
	kill -$nombre $pid
}
proc=$(pidProf)
if [ a$proc=a ]
cherche