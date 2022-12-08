provider "aws" {
      region = "eu-north-1"
}
resource "aws_instance" "app" {
    ami           = "ami-02384a901b5df8024" 
    instance_type = "t3.micro"
    security_groups = ["jkSG"]
    key_name      =  "pem-cer-KeyFile"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
