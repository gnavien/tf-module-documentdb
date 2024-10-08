variable "component" {}
variable "env" {}
variable "subnet_ids" {}
variable "tags" {}
variable "sg_subnet_cidr" {}
variable "kms_key_arn" {}
variable "engine" {}
variable "vpc_id" {}
variable "port" {
  default = 27017
}
variable "engine_version" {}
variable "instance_count" {}
variable "instance_class" {}