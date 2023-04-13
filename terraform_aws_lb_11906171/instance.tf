resource "aws_instance" "ashish-server" {
  ami = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  count = 2
  key_name = "Ashish"
  security_groups = ["${aws_security_group.ashish-server.name}"]
  user_data = <<-EOF

    #!bin/bash
    sudo su
    yum update -y
    yum install httpd -y
    systemctl start httpd
    systemctl enable httpd
    echo "<html><h1>Welcome to Aws console</h1>
    EOF

}