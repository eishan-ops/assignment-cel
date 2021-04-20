#!/bin/bash
#this script will list out Vpc and cidr Blocks in Canada and tokyo
rm -rf /home/ubuntu/my_vpcs.txt
aws ec2 describe-vpcs --region ap-northeast-1 --profile dalailama | grep -w -E 'VpcId|CidrBlock' | head -n2 >> /home/ubuntu/my_vpcs.txt 
aws ec2 describe-vpcs --region ca-central-1 --profile dalailama | grep -w -E 'VpcId|CidrBlock' | head -n2 >> /home/ubuntu/my_vpcs.txt
cat /home/ubuntu/my_vpcs.txt

