variable "ami" {}
variable "instance_type" { default = "t2.micro" }
variable "subnet_id" {}
variable "security_group_id" {}
variable "user_data_path" { default = "./scripts/user_data.sh" }
