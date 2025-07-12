variable "ingress_ports"{
    #type = list(map)
    default = [
    {
        from_port = 22
        to_port = 22
        protocol = "tcp" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    },
    {
        from_port = 80
        to_port = 80
        protocol = "tcp" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    },
    {
        from_port = 8080
        to_port = 8080
        protocol = "tcp" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    },
    {
        from_port = 3306
        to_port = 3306
        protocol = "tcp" # all protocols
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ]
}