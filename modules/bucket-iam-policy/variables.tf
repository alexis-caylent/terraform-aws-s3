variable "bucket_name" {
  description = "Name of S3 bucket resource that IAM policies will be created for."
  type        = string
}

variable "read_only_paths" {
  description = "List of paths/prefixes that should be attached to a read-only policy. Listed path(s) should omit the head bucket."
  type        = list(string)
  default     = []
}

variable "read_write_paths" {
  description = "List of paths/prefixes that should be attached to a read-write` policy. Listed path(s) should omit the head bucket."
  type        = list(string)
  default     = []
}

variable "read_only_actions" {
  description = "List of actions that should be permitted by a read-only policy."
  type        = list(string)
  default = [
    "s3:Get*",
    "s3:List*"
  ]
}

variable "read_write_actions" {
  description = "List of actions that should be permitted by a read-write policy."
  type        = list(string)
  default = [
    "s3:GetBucketLocation",
    "s3:GetBucketCORS",
    "s3:GetObjectVersionForReplication",
    "s3:GetObject",
    "s3:GetBucketTagging",
    "s3:GetObjectVersion",
    "s3:GetObjectTagging",
    "s3:ListMultipartUploadParts",
    "s3:ListBucketByTags",
    "s3:ListBucket",
    "s3:ListObjects",
    "s3:ListObjectsV2",
    "s3:ListBucketMultipartUploads",
    "s3:PutObject",
    "s3:PutObjectTagging",
    "s3:HeadBucket",
    "s3:DeleteObject"
  ]
}

variable "arn_partition" {
  type        = string
  description = <<EOF
  The partition in which the resource is located. A partition is a group of AWS Regions.
  Each AWS account is scoped to one partition.
  The following are the supported partitions:
    aws -AWS Regions
    aws-cn - China Regions
    aws-us-gov - AWS GovCloud (US) Regions
  EOF
  default     = "aws"
}
