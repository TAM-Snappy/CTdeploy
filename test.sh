#!/bin/bash

echo "$5" > sshpubkey

scp sshpubkey root@192.168.1.210:sshpubkey
scp deploy.sh root@192.168.1.210:deploy.sh
ssh root@192.168.1.210 "chmod 755 deploy.sh; bash deploy.sh $1 $2 $3 $4; rm -f deploy.sh"
