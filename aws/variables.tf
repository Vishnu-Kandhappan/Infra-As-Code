variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-west-2"
}

variable "aws_access_key_id" {
  description = "AWS access key ID (leave null to use shared credentials file or environment)."
  type        = string
  default     = null
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS secret access key (leave null to use shared credentials file or environment)."
  type        = string
  default     = null
  sensitive   = true
}

variable "aws_shared_credentials_files" {
  description = "Paths to AWS shared credentials files."
  type        = list(string)
  default     = []
}

variable "aws_profile" {
  description = "AWS shared credentials profile name."
  type        = string
  default     = null
}

variable "aws_zone" {
  description = "The AWS availability zone to deploy the instance in."
  type        = string
  default     = "us-west-2a"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t3.micro"
}

variable "instance_count" {
  description = "The number of instances to create."
  type        = number
  default     = 1
}

variable "instance_name_prefix" {
  description = "Prefix for created instance names."
  type        = string
  default     = "spot-vm"
}

variable "ami" {
  description = "The AMI ID to use for the instance."
  type        = string
}

variable "key_name" {
  description = "The name of the SSH key pair to use for the instances."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be launched."
  type        = string
  default     = null
}

variable "spot_instance" {
  description = "Whether to create spot instances."
  type        = bool
  default     = true
}

variable "spot_price" {
  description = "The maximum price you are willing to pay for a spot instance."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the instances."
  type        = map(string)
  default     = {}
}
