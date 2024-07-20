
resource "aws_iam_role" "instance" {
  name               = "instance_role"
  path               = "/example_bounded_context/"
  permissions_boundary = "arn:aws::1234567890:iam:policy/permission_boundary"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
  tags {
    Bounded-Context = "example_bounded_context"
  }
}