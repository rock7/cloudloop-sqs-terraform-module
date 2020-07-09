output "mo_queue_arn" {
  value = aws_sqs_queue.mo.arn
}

output "mo_queue_name" {
  value = aws_sqs_queue.mo.name
}

output "mo_queue_url" {
  value = aws_sqs_queue.mo.id
}

output "mt_queue_arn" {
  value = aws_sqs_queue.mt.arn
}

output "mt_queue_name" {
  value = aws_sqs_queue.mt.name
}

output "mt_queue_url" {
  value = aws_sqs_queue.mt.id
}

output "mt_confirm_queue_arn" {
  value = aws_sqs_queue.mt_confirm.arn
}

output "mt_confirm_queue_name" {
  value = aws_sqs_queue.mt_confirm.name
}

output "mt_confirm_queue_url" {
  value = aws_sqs_queue.mt_confirm.id
}

