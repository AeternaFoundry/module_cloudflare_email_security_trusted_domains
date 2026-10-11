resource "cloudflare_email_security_trusted_domains" "email_security_trusted_domains" {
  for_each = var.email_security_trusted_domains

  account_id    = each.value.account_id
  pattern       = each.value.pattern
  comments      = each.value.comments
  is_recent     = each.value.is_recent
  is_regex      = each.value.is_regex
  is_similarity = each.value.is_similarity
}

