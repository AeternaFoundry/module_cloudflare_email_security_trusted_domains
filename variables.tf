variable "email_security_trusted_domains" {
  description = <<EOT
Map of email_security_trusted_domains, attributes below
Required:
    - account_id
    - pattern
Optional:
    - comments
    - is_recent
    - is_regex
    - is_similarity
EOT

  type = map(object({
    account_id    = string
    pattern       = string
    comments      = optional(string)
    is_recent     = optional(bool)
    is_regex      = optional(bool)
    is_similarity = optional(bool)
  }))
}

