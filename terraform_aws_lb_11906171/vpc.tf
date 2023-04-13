data "aws_vpc" "default" {
  default = true
}
data "aws_subnet" "subnet" {
  vpc_id = data.aws_vpc.default.id
}