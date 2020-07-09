locals {
  rock7_arn = "arn:aws:iam::902942185257:role/Rock7CustomerSQS"
}

//Names

variable "mo_queue_name" {
  description = "The name for the mobile-originated queue in SQS"
  type        = string
  default     = "Rock7_MO"
}

variable "mt_queue_name" {
  description = "The name for the mobile-terminated queue in SQS"
  type        = string
  default     = "Rock7_MT"
}

variable "mt_confirm_queue_name" {
  description = "The name for the mobile-terminated confirmation queue in SQS"
  type        = string
  default     = "Rock7_MT_Confirm"
}

//Visibility timeout

variable "mo_visibility_timeout_seconds" {
  description = "Time in seconds to allow an unacknowledged SQS message to be picked up again"
  type        = number
  default     = 30
}

variable "mt_confirm_visibility_timeout_seconds" {
  description = "Time in seconds to allow an unacknowledged SQS message to be picked up again"
  type        = number
  default     = 30
}

//Message retention

variable "mo_message_retention_days" {
  description = "Time in days an unacknowledged SQS message is kept before deletion"
  type        = number
  default     = 3
}

variable "mt_message_retention_days" {
  description = "Time in days an unacknowledged SQS message is kept before deletion"
  type        = number
  default     = 3
}

variable "mt_confirm_message_retention_days" {
  description = "Time in days an unacknowledged SQS message is kept before deletion"
  type        = number
  default     = 3
}