output "ec2_AMIid" {
  description = "EC2 Instance AMI Id"
  value = aws_instance.my-ec2-vm.id
}
output "vpc_id" {
  description = "vpc id"
  value = aws_vpc.vpc-dev.id
}
output "vpc_tag" {
  description = "vpc tag"
  value = aws_vpc.vpc-dev.tags
}