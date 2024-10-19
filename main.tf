provider "aws" {
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  region                      = "us-west-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
  endpoints {
    s3       = "http://localhost:59383"
    dynamodb = "http://localhost:59383"
    lambda   = "http://localhost:59383"
    ec2      = "http://localhost:59383"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "test-bucket"
}
