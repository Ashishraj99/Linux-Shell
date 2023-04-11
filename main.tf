provider "aws" {

access_key = "AKIAWJN3TAEUXMAL227X"
secret_key = "Jf3EFcvlBfC44t9yBe6bVyqssVyxOUBHQmdT8DWd"
region = "us-east-1"

}

resource "aws_s3_bucket" "example_bucket" {
bucket = "11906171"
acl = "private"

versioning {
enabled = true
}
}