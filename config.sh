#!/bin/bash

scp service.sh root@$1:service.sh
ssh root@$1 "chmod 755 service.sh; bash service.sh $2; rm -f service.sh"
