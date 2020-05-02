#!/usr/bin/env bash

# deploy _site to s3 and refresh cloudfront cache


aws s3 sync _site s3://bad-idea-rodeo-site
aws cloudfront create-invalidation \
    --distribution-id E3IZGZZ7XVQF65 \
    --paths "/*";