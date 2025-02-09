resource "aws_iam_user" "test" {
  name = "iamadmin-tf"
  path = "/"

  tags = {
    name = "tf-created"
  }
}

resource "aws_iam_access_key" "test" {
  user = aws_iam_user.test.name

}

data "aws_iam_policy_document" "test-document" {
  statement {
    effect    = "Allow"
    actions   = ["*"]
    resources = ["*"]
  }
}

resource "aws_iam_user_policy" "test-policy" {
  name   = "iamadmin-tf-policy"
  user   = aws_iam_user.test.name
  policy = data.aws_iam_policy_document.test-document.json
}
