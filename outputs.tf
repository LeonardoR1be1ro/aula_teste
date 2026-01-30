output "bucket_id" {
  description = "O ID (nome) do bucket S3 criado."

  value = aws_s3_bucket.bucket_da_aula.id
}

output "bucket_arn" {
  description = "O Amazon Resource Name (ARN) completo do bucket S3."
  value       = aws_s3_bucket.bucket_da_aula.arn
}
