module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jenkins-vpc"
  cidr = "10.0.0.0/16"

  azs            = data.aws_availability_zones.azs.names
  public_subnets = var.public_subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Name        = "jenkins_vpc"
    Terraform   = "true"
    Environment = "dev"
  }
  public_subnet_tags = {
    Name = "jenkins_subnet"
  }
}