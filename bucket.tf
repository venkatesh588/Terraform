resource "aws_s3_bucket" "task1_s3bucket" {
  bucket = "website-images-res"
  acl    = "public-read"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }    
}
