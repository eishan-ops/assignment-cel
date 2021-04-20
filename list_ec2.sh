#!/bin/bash
#this script will list out all instances in Canada and tokyo (InstancesType, PublicIpV4, Ec2-name, Stopped/running)
rm -rf /home/ubuntu/my_ec2.txt
aws ec2 describe-instances --region ap-northeast-1 --profile dalailama | grep -E 'InstanceType|PublicIpAddress|Value|"Name":' >> /home/ubuntu/my_ec2.txt
aws ec2 describe-instances --region ca-central-1 --profile dalailama | grep -E 'InstanceType|PublicIpAddress|Value|"Name":' >> /home/ubuntu/my_ec2.txt
cat /home/ubuntu/my_ec2.txt
