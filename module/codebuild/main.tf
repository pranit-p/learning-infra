resource "aws_codebuild_project" "demo-code-built" {
  name = "demo-project"
  service_role = aws_iam_role.demo_iam_role.arn
  artifacts {
    type = "NO_ARTIFACTS"
  }
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image = "aws/codebuild/standard:1.0"
    type = "LINUX_CONTAINER"
  }
  source {
    type = "GITHUB"
    location = "https://github.com/pranit-p/demo-react-app.git"
  }
}

resource "aws_iam_role" "demo_iam_role" {
  name = "example"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_codebuild_source_credential" "demo_code_build" {
  auth_type   = "PERSONAL_ACCESS_TOKEN"
  server_type = "GITHUB"
  token       = "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"
}

resource "aws_iam_role_policy" "example" {
  role = aws_iam_role.demo_iam_role.name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
    }
  ]
}
POLICY
}

