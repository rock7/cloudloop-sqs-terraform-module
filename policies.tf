resource "aws_sqs_queue_policy" "mo" {
  queue_url = aws_sqs_queue.mo.id
  policy    = data.aws_iam_policy_document.mo.json
}

data "aws_iam_policy_document" "mo" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [local.rock7_arn]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:GetQueueUrl"
    ]
    resources = [aws_sqs_queue.mo.arn]
  }
}

resource "aws_sqs_queue_policy" "mt" {
  queue_url = aws_sqs_queue.mt.id
  policy    = data.aws_iam_policy_document.mt.json
}

data "aws_iam_policy_document" "mt" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [local.rock7_arn]
    }

    actions = [
      "sqs:ReceiveMessage",
      "sqs:ChangeMessageVisibility",
      "sqs:DeleteMessage",
      "sqs:GetQueueAttributes",
      "sqs:GetQueueUrl"
    ]
    resources = [aws_sqs_queue.mt.arn]
  }
}

resource "aws_sqs_queue_policy" "mt_confirm" {
  queue_url = aws_sqs_queue.mt_confirm.id
  policy    = data.aws_iam_policy_document.mt_confirm.json
}

data "aws_iam_policy_document" "mt_confirm" {
  statement {
    principals {
      type        = "AWS"
      identifiers = [local.rock7_arn]
    }

    actions = [
      "sqs:SendMessage",
      "sqs:GetQueueUrl"
    ]
    resources = [aws_sqs_queue.mt_confirm.arn]
  }
}