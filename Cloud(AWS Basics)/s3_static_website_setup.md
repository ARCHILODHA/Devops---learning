# S3 Static Website Setup

aws s3 mb s3://my-static-site
aws s3 sync . s3://my-static-site
aws s3 website s3://my-static-site --index-document index.html
