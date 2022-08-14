#!/bin/bash

deploymentHash=''
serviceHash=''
lineCounter=0
shopt -s lastpipe

cat ./hashs | while read line
do
    if [ $lineCounter -eq 0 ]; then
      deploymentHash=$line
    fi

    if [ $lineCounter -eq 1 ]; then
      serviceHash=$line
    fi

    lineCounter=$((lineCounter + 1))
done

echo "deployment hash: $deploymentHash"

echo "service hash: $serviceHash"

currentDeploymentHash=$(cat ./deployment.yaml | sha256sum)
echo "$currentDeploymentHash"  > ./hashs

echo "current deployment hash: $currentDeploymentHash"

if [ "$deploymentHash" = "$currentDeploymentHash" ]; then
  echo "deployment has the same hash"
else
  echo "the deployments hash are different "
fi

currentServiceHash=$(cat ./service.yaml | sha256sum)
echo "$currentServiceHash"  >> ./hashs

echo "current service hash: $currentServiceHash"

if [ "$serviceHash" = "$currentServiceHash" ]; then
  echo "service has the same hash"
else
  echo "the service hash are different "
fi