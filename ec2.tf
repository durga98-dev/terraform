resource "aws_security_group" "sg-terraform"{
    name = "sg-terraform"
    description = "all inbound traffic and all outbound traffic"
    #vpc_id optional - will take default vpc 
    tags = {
        Name = "sg-terraform"
    }
}


# resource "aws_instance" "test-server"{
    
# }