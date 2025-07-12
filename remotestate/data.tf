data "aws_ami" "ec2_instance"{
    most_recent = true #mandatory as we require latest
    owners = ["973714476881"]

        filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
        }

        filter {
            name   = "virtualization-type"
            values = ["hvm"]
        }

        filter {
            name = "root-device-type"
            values = ["ebs"]
        }
}

data "aws_vpc" "default"{
    default = true
}

output "ami_info"{
    value = data.aws_ami.ec2_instance.id
}

output "vpc_info"{
    value = data.aws_vpc.default
}