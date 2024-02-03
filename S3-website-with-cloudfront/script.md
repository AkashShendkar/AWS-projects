Making a secure Portfolio website using S3 and Cloudfront.

Created a S3 bucket which is named same as my domain.
  Configurations on S3 bucket
  1. Disabled block public access
  2. Added bucket policy
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::akashshendkar.link/*"
        }
    ]
}
```
  3. Enabled Static website hosting using default configuration in properties and copied endpoint for testing.

Created Cloudfront distribution
  Configuration
  1. Choose S3 bucket as origin for the distribution.
  2. As it is POC project we take just legacy cache settings
  3. Disable WAF
  4. Use North America, Europe, Asia, Middle East, and Africa as we are in india
  5. Attached ACM SSL certificate for your domain.
