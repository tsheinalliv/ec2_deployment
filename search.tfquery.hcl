list "aws_instance" "unmanaged" {
  provider = aws
 
  config {
    region = "us-east-2"
 
    filter {
      name   = "tag:ManagedBy"
      values = ["unmanaged"]
    }
 
    filter {
      name   = "instance-state-name"
      values = ["running"]
    }
  }
}
