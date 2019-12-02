output "vpc_id" {
  value = data.aws_vpc.tags.id
}

output "vpc_cidr_block" {
  value = data.aws_vpc.tags.cidr_block
}

output "private_subnets" {
  value = data.aws_subnet_ids.public_subnets_by_id.ids
}

output "public_subnets" {
  value = data.aws_subnet_ids.private_subnets_by_id.ids
}

output "azs" {
  value = data.aws_subnet_ids.public_subnets_by_id.
}