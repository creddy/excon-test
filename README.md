# excon-test

This project tests file uploading using carrierwave/fog-aws

#### Testing
Add `config/aws.yml`

```config/aws.yml
:aws_access_key_id: <your_aws_key_id>
:aws_secret_access_key: <your_aws_secret_access_key>
:bucket: <your_s3_bucket>
:store_dir: test
```

Run the test
```bash
bundle
rake test
```
