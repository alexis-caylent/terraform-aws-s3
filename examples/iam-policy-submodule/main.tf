# Example of creating IAM policy for pre-existing S3 bucket
data "aws_s3_bucket" "existing-bucket" {
  bucket = var.existing_bucket_name
}

module "existing-bucket-iam" {
  # source = "git::https://github.com/Datatamer/terraform-aws-s3.git//modules/bucket-iam-policy?ref=0.1.0"
  source           = "../../modules/bucket-iam-policy"
  bucket_name      = data.aws_s3_bucket.existing-bucket.id
  read_write_paths = ["read-write-folder"]
}
