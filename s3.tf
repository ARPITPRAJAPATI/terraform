resource "aws_s3_bucket" "remote-s3" {
  bucket = "state-lock-arushh"

  tags = {
    Name        = "state-lock-arushh"
    Environment = "Dev"
  }
}   