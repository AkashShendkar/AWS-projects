#!/bin/bash

####################
# author - akash
# version - 1
# date - 8/2/24
####################
set -x

echo 'print s3 bucket'
aws s3 ls
echo "print ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
echo 'print lambda functions'
aws lambda list-functions
echo " Print IAM users"
aws iam list-users
echo "print iam roles"
aws iam list-roles | jq '.Roles[].RoleName'


