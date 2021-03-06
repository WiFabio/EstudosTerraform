variable "image_id" {
  default = "ami-09db26f1ef0a9f406"
  type        = string
  description = "The id of the machine image (AMI) to use for the server."

  validation {
    condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "servers" {
  default = "staging"
}

variable "plus" {
  default = 2
}

variable "environment" {
  type        = string
  default     = "staging"
  description = "The environment of instance"
}

variable "sg" {
  type = list(string)
  default = ["sg-073029a80d27e1e93"]
}

variable "instance_type" {
  type = list(string)
  default = ["t1.micro","t2.micro"]
}