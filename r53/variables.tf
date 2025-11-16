variable "instances"{
    type = list
    default = [ "mysql", "backend", "frontend" ]
}

variable "zone_id"{
    default = "Z0824629209JSDF9VAIXI"
}

variable "domain_name"{
    default = "durgadevops.fun"
}

variable "common_tags"{
    default = {
        Project = "expense"
        Environment = "dev"
    }
}