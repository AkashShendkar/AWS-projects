Making a secure Portfolio website using S3 and Cloudfront.

Created a S3 bucket which is named same as my domain.
  Configurations on S3 bucket
  1. Disabled block public access
  2. Added bcukete policy
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
