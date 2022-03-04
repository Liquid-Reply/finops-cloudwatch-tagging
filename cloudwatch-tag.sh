#!/bin/bash
# Ask the user for AWS login details from STS command if used 
# read -p 'Access Key ID: ' accesskey
# read -sp 'Secret Access Key: ' secretkey
# #read -sp 'Session Token: '  sessiontoken
# export AWS_ACCESS_KEY_ID=$accesskey
# export AWS_SECRET_ACCESS_KEY=$secretkey
# #export AWS_SESSION_TOKEN=$sessiontoken
aws configure
echo 
echo Please get the arn of the cloud watch resource you would like to tag
read -p 'ARN of the Cloudwatch resource you like to add: ' arn
read -p 'Tag Key: ' key
read -p 'Tag Value: ' value
export varkey=$key
export varvalue=$value
aws cloudwatch tag-resource --resource-arn $arn --tags Key=$varkey,Value=$varvalue
aws cloudwatch list-tags-for-resource --resource-arn $arn