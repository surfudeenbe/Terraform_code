resource "aws_instance" "web_server" {
  ami = "ami-055e3d4f0bbeb5878"
  instance_type = "t2.micro"
  key_name = "US_Key"
  vpc_security_group_ids = ["sg-078b178f894ec3537"]
  subnet_id = "subnet-0031f85390886b525"
  tags = {
    Name="Linux"
    Env="Test"
  }
}
resource "aws_ebs_volume" "My_TR_1" {
  availability_zone = "us-west-2a"
  size = 10
  tags = {
    name="My_TR_Vol1"
  }

}