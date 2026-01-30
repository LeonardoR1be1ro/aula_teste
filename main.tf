provider "aws" {

  region = var.aws_region
  #region = "us-east-2"

}

resource "aws_s3_bucket" "bucket_da_aula" {
  bucket = "${var.bucket_name_prefix}-2026-01-29"

  tags = {
    Name        = "Bucket da Aula 1"
    Environment = "Development"
    Owner       = "Aluno"
  }
}

#resource "aws_s3_bucket_acl" "bucket_acl" {
#  bucket = aws_s3_bucket.bucket_da_aula.id
#  acl    = "private"
#}
