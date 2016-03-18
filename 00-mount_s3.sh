#!/bin/bash

# Get s3 creds from env var and write to password file
echo "$S3_IDENTITY":"$S3_CREDENTIAL" >> /etc/passwd-s3fs
chmod 600 /etc/passwd-s3fs
# Mount s3 bucket from environment variable
mkdir -p /etc/puppetlabs/code
s3fs -o nonempty $S3_BUCKET /etc/puppetlabs/code
