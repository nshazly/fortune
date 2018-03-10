#!/bin/bash
trap "exit" SIGINT
mkdir /var/htdocs

perl -pe "s|VERSION|${VERSION:=0.1.3}|" template.html > index.html
while :
do
  echo $(date) Writing fortune to /var/htdocs/index.html
  perl -pe "s|QUOTE|$(/usr/games/fortune)|" index.html > /var/htdocs/index.html 
  cat /var/htdocs/index.html
  sleep ${SLEEP_TIME:=10}
done
