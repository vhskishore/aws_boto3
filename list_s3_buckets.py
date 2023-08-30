#!/usr/bin/python3
import boto3
aws_mgmt_con=boto3.session.Session(profile_name="root")
s3_bucket=aws_mgmt_con.resource('s3')
for each_bucket in s3_bucket.buckets.all():
    print (each_bucket.name)