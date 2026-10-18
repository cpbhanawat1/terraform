resource "aws_default_vpc" "default" {
  
}

resource "aws_key_pair" "mykey" {
    key_name = "my-key2"
    public_key = file("my-key2.pub")
    
    
  
}

resource "aws_security_group" "my-sg" {
    name = "my-sg-2"

    ingress {

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
        description = "ssh"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}






resource "aws_instance" "ec3" {
    instance_type = "t2.small"
    vpc_security_group_ids = [ aws_security_group.my-sg.name ]
    root_block_device {
        volume_size = 8
        volume_type = "gp3"
    }
    key_name = aws_key_pair.mykey.key_name
    tags = {
      name = "prod-ec2"

    }
    ami = var.aws_ami

    

    
  
}