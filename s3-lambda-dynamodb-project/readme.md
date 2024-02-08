Well in this project we use Lambda as serverless coding platform where the code is executed when there is trigger.
1. S3 bucket is used as trigger when there is creation or deletion of files in bucket.
2. In lambda function we deploy our code if triggered put the values in dynamodb table.
3. dynamodb table is where we get output.
4. We also used SNS to send notfications when there is change in S3 bucket.
