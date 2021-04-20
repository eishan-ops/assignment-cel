#!/bin/bash
#this script will list out all instances in Canada and tokyo (InstancesType, PublicIpV4, Ec2-name, Stopped/running)
#Included Instance name and state to differentiate between other EC2 instances I already use in my AWS account
IAM_user=$1
rm -rf /home/ubuntu/my_ec2.txt
aws ec2 describe-instances --region ap-northeast-1 --profile $IAM_user | grep -E 'InstanceType|PublicIpAddress|Value|"Name":' >> /home/ubuntu/my_ec2.txt
aws ec2 describe-instances --region ca-central-1 --profile $IAM_user | grep -E 'InstanceType|PublicIpAddress|Value|"Name":' >> /home/ubuntu/my_ec2.txt
cat /home/ubuntu/my_ec2.txt
