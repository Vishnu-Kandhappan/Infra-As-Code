variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "devops-poc-482509"
}

variable "region" {
  description = "The region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone to deploy resources"
  type        = string
  default     = "us-central1-c"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "e2-standard-4"
}

variable "image_family" {
  description = "The image family to use"
  type        = string
  default     = "ubuntu-2204-lts"
}

variable "image_project" {
  description = "The project that provides the image"
  type        = string
  default     = "ubuntu-os-cloud"
}

variable "preemptible" {
  description = "Whether to create preemptible instances"
  type        = bool
  default     = true
}

variable "num_instances" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}

variable "instance_name_prefix" {
  description = "Prefix for created instance names"
  type        = string
  default     = "preemptible-instance"
}

variable "machine_type" {
  description = "The type of instance to create"
  type        = string
  default     = "e2-standard-4"
}

variable "machine_image" {
  description = "The machine image to use for the instances"
  type        = string
  default     = "" # keep for backward compatibility / non-interactive runs
}

variable "min_replicas" {
  description = "Minimum replicas for autoscaler"
  type        = number
  default     = 1
}

variable "max_replicas" {
  description = "Maximum replicas for autoscaler"
  type        = number
  default     = 3
}

variable "cpu_target" {
  description = "Target CPU utilization for autoscaler (fraction)"
  type        = number
  default     = 0.6
}
