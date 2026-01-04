aws_shared_credentials_files = ["C:/Users/Pc/IAC/aws/.aws/credentials.txt"] # Optional if you set keys above
aws_profile = "default" # Optional if using shared credentials file

aws_region = "us-west-2"
aws_zone = "us-west-2a"
instance_type = "t3.micro"
ami = "ami-03c1f788292172a4e" # Replace with the desired AMI ID
key_name = "default" # Replace with your key name
subnet_id = "subnet-0464d178b68263" # Replace with your subnet ID
instance_count = 1
spot_instance = true
spot_price = "0.05" # Maximum price you are willing to pay for spot instances
instance_name_prefix = "spot-vm"

tags = {
  Environment = "automation"
  Project     = "monitoring-platform"
}
