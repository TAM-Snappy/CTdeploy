#!/bin/bash

echo "En attente du lancement du conteneur .."
while ! ping -c 1 $1; do
        sleep 1
done


scp -o "StrictHostKeyChecking=no" service.sh root@$1:service.sh
ssh -o "StrictHostKeyChecking=no" root@$1 "chmod 755 service.sh; bash service.sh $2; rm -f service.sh"
