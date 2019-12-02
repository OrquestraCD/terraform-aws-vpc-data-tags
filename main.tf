data "aws_vpc" "tags" {
  tags = var.vpc_tags
}

data "aws_subnet_ids" "public_subnets_by_id" {
  vpc_id = data.aws_vpc.tags.id

  filter {
    name = "tag:Name"
    values = [
      "*public*"]
  }
}

data "aws_subnet_ids" "private_subnets_by_id" {
  vpc_id = data.aws_vpc.tags.id

  filter {
    name = "tag:Name"
    values = [
      "*private*"]
  }
}


