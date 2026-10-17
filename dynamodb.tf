# resource "aws_dynamodb_table" "dc_table" {
#   name           = "my_table"
#   billing_mode   = "PAY_PER_REQUEST" # -> ISKE PAR HIT PESA LAGTA HAI BUS       #"PROVISIONED"  -> YE HAMESHA CHALU REHTA HAI INSTANCE
#   #read_capacity  = 1
#   #write_capacity = 1

#   hash_key = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"  # matlab string
#   }
# }