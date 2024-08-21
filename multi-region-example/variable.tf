variable "ami_id_1" {
  type        = string
  default     = "ami-0583d8c7a9c35822c"
  description = "AMI-ID for this instance"
}

variable "ami_id_2" {
  type        = string
  default     = "ami-0aa8fc2422063977a"
  description = "AMI-ID for this instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type"
}

variable "icount" {
  type        = number
  default     = 1
  description = "No of instances to be launched"
}

variable "name" {
  type        = string
  default     = "redhat-machine"
  description = "Name of the machine"
}

variable "env" {
  type        = string
  default     = "dev"
  description = "ENV of this instance"

}
