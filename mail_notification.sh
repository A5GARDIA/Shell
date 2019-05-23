#!/bin/bash

free -h > log.txt
HOSTNAME=$(hostname)
 USED_MEM=$(grep 'Mem' log.txt | head -c33 | tail -c10)

 if [[ ${?} -ne 0 ]]
 then
        echo "  ${USED_MEM}  Critical"
        exit 1
else
        echo " ${HOSTNAME}  USED : ${USED_MEM} of RAM memory" | mail  -s "HOST INFO" email@gmail.com
fi








%%%%%%%%%%

Konfiguroni mailx per te perdour mail notification
