resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "state-lock-arushh-db"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name        = "state-lock-arushh-db"
  }
}