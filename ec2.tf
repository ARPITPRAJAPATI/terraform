#key-pair
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key.pub")
}

#Vpc & security group
resource "aws_default_vpc" "default" {
}

resource "aws_security_group" "my_security_group" {
     name = "automate-sg"
     description = "this will add a tf generated sg"
     vpc_id = aws_default_vpc.default.id

     #inboundrule
     ingress  {
        from_port = 22
        to_port = 22
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]

     }
     ingress  {
        from_port = 80
        to_port = 80
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]

     }

      
     egress {
          from_port = 0
          to_port = 0
          protocol="-1"
          cidr_blocks = ["0.0.0.0/0"]
     }

}
#ec2 instance

# resource "aws_instance" "my_instance" {
#         for_each = tomap({
#             "terra-form-micro" = "t2.micro"
#             "terra-form-small" = "t2.small"
#         })
#         key_name = aws_key_pair.my_key.key_name
#         security_groups   = [aws_security_group.my_security_group.name]
#         instance_type = each.value
#         ami = var.ec2_ami_id
#         # user_data = file("install_nginx.sh")
#         root_block_device {
#           volume_size = var.env=="prd" ? 20 : var.ec2_root_storage
#           volume_type = "gp3"
#         }
#         tags = {
#             Name = each.key
#         }
# }
# resource "aws_instance" "my_instance2" {
#         ami = "unknown"
#         instance_type = "unknown"
# }