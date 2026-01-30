variable "aws_region" {
  description = "A região da AWS onde os recursos serão criados."
  type        = string
  default     = "us-east-2"
}

variable "bucket_name_prefix" {
  description = "Prefixo para o nome do bucket S3."
  type        = string
  default     = "aula-hcl-terraformxyz"
}
