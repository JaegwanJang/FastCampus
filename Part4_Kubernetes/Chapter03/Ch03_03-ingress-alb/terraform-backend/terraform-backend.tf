 resource "aws_s3_bucket" "moon-s3-tf-state" {

   bucket = "moon-s3-tf-state"

   tags = {
     "Name" = "moon-s3-tf-state"
   }
  
 }

 resource "aws_dynamodb_table" "moon-ddb-tf-lock" {

   depends_on   = [aws_s3_bucket.moon-s3-tf-state]
   name         = "moon-ddb-tf-lock"
   billing_mode = "PAY_PER_REQUEST"
   hash_key     = "LockID"

   attribute {
     name = "LockID"
     type = "S"
   }

   tags = {
     "Name" = "moon-ddb-tf-lock"
   }

 }