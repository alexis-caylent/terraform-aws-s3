module "minimal" {
  # source           = "git::https://github.com/Datatamer/terraform-aws-s3?ref=1.0.0"
  source           = "../../"
  bucket_name      = var.test_bucket_name
  read_only_paths  = ["path/to/ro-folder"]
  read_write_paths = ["path/to/rw-folder", "path/to/another-rw-folder"]
}
