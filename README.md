# excon-test

This project tests file uploading using carrierwave/fog-aws

#### Testing
Configure your AWS credentials
```bash
export CW_STORE_DIR=exon-test
export S3_BUCKET=<your_s3_bucket>
export AWS_ACCESS_KEY_ID=<your_aws_key_id>
export AWS_SECRET_ACCESS_KEY=<your_aws_secret_access_key>
```

Run the test
```bash
bundle
rake test
```
