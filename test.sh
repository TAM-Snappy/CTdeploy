#!/bin/bash

scp deploy.sh root@192.168.1.210:deploy.sh
ssh root@192.168.1.210 'chmod 755 deploy.sh; bash deploy.sh' 
