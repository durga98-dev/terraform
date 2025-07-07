resource "aws_security_group" "terraform_sg"{
    name = "terraform_sg"
    description = "all inbound traffic and all outbound traffic"
    #vpc_id optional - will take default vpc 
    tags = {
        Name = "terraform_sg"
    }
}


# resource "aws_instance" "test-server"{
    
# }