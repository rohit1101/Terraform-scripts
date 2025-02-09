resource "aws_iam_user" "test" {
  name = "iamadmin-tf"

  tags = {
    name = "tf-created"
  }
}

resource "aws_iam_user_login_profile" "test_user_login_profile" {
  user                    = aws_iam_user.test.name
  password_length         = 10
  password_reset_required = false
  # pgp_key = "keybase:your_key" can be used if the password requires encoding 
}


data "aws_iam_policy" "iamadmin_policy" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user_policy_attachment" "test_attachment" {
  policy_arn = data.aws_iam_policy.iamadmin_policy.arn
  user       = aws_iam_user.test.name
}

# resource "aws_iam_account_alias" "test_account_alias" {
#   account_alias = "non-linear-trap"
# }


output "iamadmin_userlogindata" {
  value     = aws_iam_user_login_profile.test_user_login_profile.password
  sensitive = true
}
