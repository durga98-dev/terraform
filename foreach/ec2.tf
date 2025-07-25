resource "aws_security_group" "terraform_sg"{
    name = "terraform_foreach_sg"
    description = "all inbound traffic and all outbound traffic"
    #vpc_id optional - will take default vpc 
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags = {
        Name = "terraform_sg_foreach"
    }
}

#creating Ec2 instance
resource "aws_instance" "test-server"{
    for_each = var.instances # Terraform will give us a variable called each to iterate
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [ aws_security_group.terraform_sg.id ]
    instance_type = each.value
    tags = {
        Name = each.key
    }
    
}