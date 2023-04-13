terraform {
  backend "s3" {
    bucket = "newbucketashis"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

provider "aws" {

access_key = "*********************"
secret_key = "******************************"
region = "us-east-1"

}

resource "aws_s3_bucket" "example_bucket" {
bucket = "11906171"
acl = "private"

versioning {
enabled = true
}
}
