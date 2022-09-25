variable "region" {
    description = "AWS Region"
    type = string
    default = "us-east-1"
}

variable "sg-name" {
    description = "Security Group Name"
    type = string
    default = "Security_Group" 
}

variable "sg_description" {
    description = "Security Group Description"
    type = string
    default = null  
}

variable "sg-tag_name" {
    description = "Security Group Tag Name"
    type = string
    default = "Security_Group"  
}

variable "sg-ports" {
    description = "Security Group Inbound Rules Port Numbers"
    type = list(number)
    default = [22, 80]
}

variable "protocol" {
    description = "Ingress Protocol"
    type = string
    default = "tcp"
}