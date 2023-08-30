#!/usr/bin/python3
import boto3
aws_mgmt_con=boto3.session.Session(profile_name="root")
iam_console=aws_mgmt_con.resource('iam')
for each_user in iam_console.users.all():
    print (each_user.name)