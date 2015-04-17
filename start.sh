#!/bin/bash

ACCESS_KEY=${ACCESS_KEY:?"ACCESS_KEY env variable is required"}
SECRET_KEY=${SECRET_KEY:?"SECRET_KEY env variable is required"}
S3_PATH=${S3_PATH:?"S3_PATH env variable is required"}
DATA_PATH=${DATA_PATH:-/data/}

echo "access_key=$ACCESS_KEY" >> /root/.s3cfg
echo "secret_key=$SECRET_KEY" >> /root/.s3cfg

exec /usr/bin/s3cmd sync "$S3_PATH" "$DATA_PATH"
