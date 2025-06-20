#!/bin/bash

aws s3 cp src/ s3://sprelf-homepage/ --recursive --profile sprelf
aws cloudfront create-invalidation --distribution-id E16HSWF2LMETM2 --paths "/*" --profile sprelf