# terraform-aws-iam-account

Configure account alias and CIS-compliant password policy.

## Password policy

The default password policy values are compliant with AWS CIS Benchmark recommendations. See
[AWS CIS Foundations Benchmark](https://d1.awsstatic.com/whitepapers/compliance/AWS_CIS_Foundations_Benchmark.pdf).

| No.              | Description            |
|:------------------|:----------------------|
| 1.5 | Ensure IAM password policy requires at least one uppercase letter |
| 1.6 | Ensure IAM password policy require at least one lowercase letter |
| 1.7 | Ensure IAM password policy require at least one symbol |
| 1.8 | Ensure IAM password policy require at least one number |
| 1.9 | Ensure IAM password policy requires minimum length of 14 or greater |
| 1.10 | Ensure IAM password policy prevents password reuse |
| 1.11 | Ensure IAM password policy expires passwords within 90 days or less |

## Usage

Example usage:

```
module "iam_account" {
  source = "git@github.com:darrelldavis/terraform-aws-iam-account?ref=master"

  account_alias = "staging"
}
```

## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account\_alias | AWS IAM account alias for this account | string | n/a | yes |
| allow\_users\_to\_change\_password | Whether to allow users to change their own password | bool | `"true"` | no |
| hard\_expiry | Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset) | bool | `"false"` | no |
| max\_password\_age | The number of days that an user password is valid. | number | `"90"` | no |
| minimum\_password\_length | Minimum length to require for user passwords | number | `"14"` | no |
| password\_reuse\_prevention | The number of previous passwords that users are prevented from reusing | number | `"24"` | no |
| require\_lowercase\_characters | Whether to require lowercase characters for user passwords | bool | `"true"` | no |
| require\_numbers | Whether to require numbers for user passwords | bool | `"true"` | no |
| require\_symbols | Whether to require symbols for user passwords | bool | `"true"` | no |
| require\_uppercase\_characters | Whether to require uppercase characters for user passwords | bool | `"true"` | no |

## Outputs

None.

## Authors

[Darrell Davis](https://github.com/darrelldavis)

## License

MIT Licensed. See LICENSE for full details.