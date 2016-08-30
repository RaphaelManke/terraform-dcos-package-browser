variable "aws_access_key" {
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
}

variable "aws_region" {
  description = "AWS Region to launch configuration in"
}
variable "ssh_public_key" {
  description = "SSH public key to give SSH access"
}
### Optional Parameters ###

variable "app-instance-type" {
  description = "App instance type"
  default = "m3.xlarge"
}

variable "app-instance-count" {
  description = "Number of App instances"
  default = "1"
}


variable "ubuntu_amis" {
  description = "Ubuntu AMIs for regions"
  default = {
    us-west-1       = "ami-1dec736e"
    ap-northeast-1  = "ami-1707ec76"
    us-west-2       = "ami-e97d8789"
    us-east-1       = "ami-304b8e5d"
    sa-east-1       = "ami-8d9913e1"
    ap-southeast-2  = "ami-62e3ca01"
    eu-west-1       = "ami-564e0b36"
    eu-central-1    = "ami-004abc6f"
    ap-southeast-1  = "ami-eda0738e"
  }
}
variable "vpc_subnet_range" {
  descpiption = "The IP range of the VPC subnet"
  default = "10.0.0.0/16"
}
