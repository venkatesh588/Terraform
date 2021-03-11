resource "aws_instance" "webserver" {
  ami           = "ami-0c7945b4c95c0481c"
  count = 2
  instance_type = "t2.micro" 
  key_name  = abc
  security_groups=[aws_security_group.allow_http_ssh.name]
tags = {
    Name = "webserver_task1[count.index]"
  }
  connection {
        type    = "ssh"
        user    = "ec2-user"
        host    = aws_instance.webserver.public_ip
        port    = 22
        private_key = private.pem
    }
  provisioner "remote-exec" {
        inline = [
        "sudo yum install httpd ",
        "sudo systemctl start httpd",
        "sudo systemctl enable httpd",
        ]
    }
}
