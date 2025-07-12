variable "instances"{
    type = map
    default = {
        mysql = "t2.micro"  #mysql - key, t2.micro - value
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}