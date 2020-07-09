# Cloudloop SQS Routing - Terraform module

This module will create three AWS SQS queues which can be used to send and receive SDB messages via Cloudloop.  It has been written for Terraform 0.12.

## Quick Start
This module can be imported using the github url:
```hcl-terraform
    module "cloudloop_sqs" {
      source = "github.com/rock7/cloudloop-sqs-terraform-module"   # Or to clone using SSH: "git@github.com:rock7/cloudloop-sqs-terraform-module.git"
    }
```

## Variables
### Queue Names
* To change the queue name from the default:
  * `mo_queue_name`
  * `mt_queue_name` 
  * `mt_confirm_queue_name`

### Visibility Timeout
* The amount of time to wait before making a message available for another attempt.  The AWS default is 30 seconds, so you may commonly want to adjust this based on your own benchmarks.  
  * `mo_visibility_timeout_seconds`
  * `mt_confirm_visibility_timeout_seconds`
### Message Retention:
* The amount of time an unacknowledged SQS message is kept before deletion. The AWS default is 3 days.
  * `mo_message_retention_days`
  * `mt_message_retention_days`
  * `mt_confirm_message_retention_days`

## Outputs
For integration with the rest of your infrastructure
* arns
  * `mo_queue_arn`
  * `mt_queue_arn`
  * `mt_confirm_queue_arn`
* names
  * `mo_queue_name`
  * `mt_queue_name`
  * `mt_confirm_queue_name`
* urls
  * `mo_queue_url`
  * `mt_queue_url`
  * `mt_confirm_queue_url`
  
## Further Customization
If you need additional changes, like dead letter queues, fork this repository or clone it locally.
