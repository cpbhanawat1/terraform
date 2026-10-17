terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
      
    }
  }
  #-----------------ye state file ko s3 par bhejega or stahte lock karega dynamo db se
  # backend "s3" {
  #   bucket = "chandresh-bhanawat9460815257"
  #   key = "terraform.tfstate"
  #   region = "ap-south-1"
  #   dynamodb_table = "my_table"
    
  # }
}



