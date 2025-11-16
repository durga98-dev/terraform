variable "instances"{
    type = map
    default = {
        mysql = "t2.micro"  #mysql - key, t2.micro - value
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "zone_id"{
    default = "Z0824629209JSDF9VAIXI"
}

variable "domain_name"{
    default = "durgadevops.fun"
}