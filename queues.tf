resource "aws_sqs_queue" "mo" {
  name                       = var.mo_queue_name
  visibility_timeout_seconds = var.mo_visibility_timeout_seconds
  message_retention_seconds  = var.mo_message_retention_days * 24 * 60 * 60
}

resource "aws_sqs_queue" "mt" {
  name                      = var.mt_queue_name
  message_retention_seconds = var.mt_message_retention_days * 24 * 60 * 60
}

resource "aws_sqs_queue" "mt_confirm" {
  name                       = var.mt_confirm_queue_name
  visibility_timeout_seconds = var.mt_confirm_visibility_timeout_seconds
  message_retention_seconds  = var.mt_confirm_message_retention_days * 24 * 60 * 60
}