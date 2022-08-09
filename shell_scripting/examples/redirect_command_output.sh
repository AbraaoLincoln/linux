#!/bin/bash

dateNow=`date +%d%m%y%H%M`
# dateNow=$(date +%d%m%y)

ls -la /home/$USER > log_$dateNow 