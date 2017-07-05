#!/bin/sh
FILE=$1
SENDER=$2
HOST=$(hostname)
FILENAME=$(basename "$FILE")
if [ -f $FILE ] && [ -s $FILE ];
then
	errors_unique=$(sed 's/^\[.*\] //g' $FILE | sort | uniq -c)
	errors_complete=$(cat $FILE)
	errors="$errors_unique

----------

$errors_complete"

	for RECIPIENT in "${@:3}"
	do
  		echo "$errors" | mail -s "log-mailer from ${FILENAME} on ${HOST}" -a "From:$SENDER" $RECIPIENT
	done
fi