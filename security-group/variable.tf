variable "sg-name" {
  type        = string
  description = "Name of the SG created"
  default     = "tf-sg"

}

variable "sg-description" {
  type        = string
  description = "SG description"
  default     = "Description of the SG created"

}

variable "ports" {
  type        = list(any)
  default     = [22, 80, 8080, ]
  description = "Port values for TF SG"
}

variable "ami_id_1" {
  type        = string
  default     = "ami-0583d8c7a9c35822c"
  description = "AMI-ID for this instance"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type"
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
