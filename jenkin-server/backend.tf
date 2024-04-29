terraform{
    backend "s3{
        bucket = "my-bucket-todo"
        key = "jenkin-server/terraform.tfstate"
        region = "us-east-1"
    }
}