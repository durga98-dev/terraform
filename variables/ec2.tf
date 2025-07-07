resource "aws_security_group" "terraform_sg"{
    name = "terraform_sg"
    description = "all inbound traffic and all outbound traffic"
    #vpc_id optional - will take default vpc 
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" # all protocols
        cidr_blocks = var.cidr
    }

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "tcp" # all protocols
        cidr_blocks = var.cidr
    }

    tags = var.tags_sg
}

#creating Ec2 instance
resource "aws_instance" "test-server"{
    ami = var.ami_id
    vpc_security_group_ids = [ aws_security_group.terraform_sg.id ]
    instance_type = var.instance_type
    tags = vars.tags
    
}