#!/bin/bash
echo "Making a Qmlandia Templates..."

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"

F1=""$1
if [ -z "$F1" ]
then
		echo "Firts parameter is not defined!"
fi
F2=""$2
if [ -z "$F2" ]
then
	echo "Seconds parameter is empty!"
else
	mkdir $F2
	if [! -f "$F2"]
	then
		echo "Folder destination not exist"
	else
		echo "Folder destination is ready..."
		cp $DIR/templates/S.qml $F2/
		cp $DIR/templates/a1.m4a $F2/
		MODULE=""
		noms=$(echo $F1 | tr "/" "\n")
		for nn in $noms
		do
    			MODULE=$nn
		done
		echo "Making module $MODULE"
		#echo "#"$MODULE > $F2/README.md
		RD="#$MODULE\n$(<$DIR/templates/readme)"
		echo $RD > $F2/README.md
		while IFS='\n' read -r col1 col2
		do 
    			echo "$col1"
    			echo "$col2"
		done <$RD



		
	fi
fi

echo "Fin"

