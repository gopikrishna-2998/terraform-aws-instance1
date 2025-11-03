variable "ami_id" {
    type = string
    description = "creating ec2 instance"
}
variable "instance_type" {
    type = string
    description = "instace type using to creating ec2 instance"
    validation {
        condition = contains(["t3.micro","t3.small","t3.medium"], var.instance_type)
        error_message = "please select tm.,micro pr small or medium"
    }
}
variable "sg_ids" {
    type = list
}
variable "tags" {
    type = map
}