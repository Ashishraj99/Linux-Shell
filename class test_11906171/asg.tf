resource "aws_instance" "web" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.web.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              EOF

  tags = {
    Name = "web"
  }
}
