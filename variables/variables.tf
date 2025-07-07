variable "ami_id"{
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is RHEL AMI"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "This is instance type of EC2"
}

variable "tags"{
    type = map 
    default = {
        project = "expense"
        component = "backend"
        Environment = "dev"
        Name = "expense-backend-dev"
    }
}

variable "from_port"{
    type = number
    default = 22
}

variable "to_port"{
    type = number
    default = 22
}

variable "cidr"{
    type = list 
    default = ["0.0.0.0/0"]
}

variable "tags_sg"{
    type = map
    default = {
        Name = "terraform_sg"
    }
}