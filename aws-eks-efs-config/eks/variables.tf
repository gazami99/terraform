variable "vpc_id" {

    description = "This is a vpc_id"
    type        = string
}

variable "eks_cluster_name" {

    description = "This is eks_cluster Name"
    type        = string
    default     = "eks-ctl" 
}

variable "endpoint_private_access" {

    description = "whether or not access via vpc"
    type        = bool
    default     = true
}

variable "instance_types" {

    description     = "your node resource settings  cpu or RAM"
    type            = list(string)
    default         = ["t3.medium"]
}

variable "ami_type" {

    description     = "Os Arch  ex) x86_64 or ARM64"
    type            = string
    default         = "AL2_x86_64"
}

variable "desired_size" {

    description     = "related to eks_node desired_size"
    type            = number
    default         = 2
}

variable "max_size" {

    description     = "related to eks_node max_size"
    type            = number
    default         = 2
}

variable "min_size" {

    description     = "related to eks_node min_size"
    type            = number
    default         = 1
}

variable "max_unavailable" {

    description     = "related to eks_node max_unavailable"
    type            = number
    default         = 1
}

variable "hostname" {

    description     = "required for ssl"
    type            = string
    nullable        = true
}

variable "vpn_security_group_id" {

    description     = "vpn_security_group_id for eks access when use private access"
    type            = string
    nullable        = true
}