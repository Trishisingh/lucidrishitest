## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.60.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.dbsubnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [aws_eip.nat_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_instance.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_network_interface.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.ec2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.mydb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | ami image name | `string` | `"ami-0b28dfc7adc325ef4"` | no |
| <a name="input_dbname"></a> [dbname](#input\_dbname) | db name | `string` | `"mydb"` | no |
| <a name="input_dbversion"></a> [dbversion](#input\_dbversion) | version of db engine | `string` | `"5.7"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | db instance size | `string` | `"db.t3.micro"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | instance type for ec2 | `string` | `"t2.micro"` | no |
| <a name="input_name"></a> [name](#input\_name) | Root name for resources in this project | `string` | `"lucid-code-test"` | no |
| <a name="input_newbits"></a> [newbits](#input\_newbits) | How many bits to extend the VPC cidr block by for each subnet | `number` | `8` | no |
| <a name="input_password"></a> [password](#input\_password) | db sa password | `string` | `"password123456"` | no |
| <a name="input_private_subnet_count"></a> [private\_subnet\_count](#input\_private\_subnet\_count) | How many private subnets to create | `number` | `3` | no |
| <a name="input_public_subnet_count"></a> [public\_subnet\_count](#input\_public\_subnet\_count) | How many subnets to create | `number` | `1` | no |
| <a name="input_username"></a> [username](#input\_username) | db sa usename | `string` | `"dbadmin"` | no |
| <a name="input_vm_count"></a> [vm\_count](#input\_vm\_count) | How many subnets to create | `number` | `2` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC cidr block | `string` | `"10.1.0.0/16"` | no |

## Outputs

No outputs.

## Asumptions

we have three subnets, one for EC2 instance and two for rds 
| username  needs to passed from pipeline 
| password, needs to pe passed from pipeline on runtime

| AWS_ACCESS_KEY_ID needs to be passed from pipeline
| AWS_SECRET_ACCESS_KEY needs to be passed from pipeline
