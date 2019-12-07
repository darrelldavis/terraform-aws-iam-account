# Configures account alias and CIS-compliant password policy

## Account alias

variable "account_alias" {
  description = "AWS IAM account alias for this account"
  type        = string
}

## Password policy
# The default password policy values are compliant with AWS Benchmark controls. See
#   https://d1.awsstatic.com/whitepapers/compliance/AWS_CIS_Foundations_Benchmark.pdf
# 
#  1.5 Ensure IAM password policy requires at least one uppercase letter
#  1.6 Ensure IAM password policy require at least one lowercase letter
#  1.7 Ensure IAM password policy require at least one symbol
#  1.8 Ensure IAM password policy require at least one number
#  1.9 Ensure IAM password policy requires minimum length of 14 or greater
# 1.10 Ensure IAM password policy prevents password reuse
# 1.11 Ensure IAM password policy expires passwords within 90 days or less

variable "allow_users_to_change_password" {
  description = "Whether to allow users to change their own password"
  default     = true
}

variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  default     = false
}

variable "max_password_age" {
  description = "The number of days that an user password is valid."
  default     = 90
}

variable "minimum_password_length" {
  description = "Minimum length to require for user passwords."
  default     = 14
}

variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing."
  default     = 24
}

variable "require_lowercase_characters" {
  description = "Whether to require lowercase characters for user passwords."
  default     = true
}

variable "require_numbers" {
  description = "Whether to require numbers for user passwords."
  default     = true
}

variable "require_symbols" {
  description = "Whether to require symbols for user passwords."
  default     = true
}

variable "require_uppercase_characters" {
  description = "Whether to require uppercase characters for user passwords."
  default     = true
}
