## GitHub Token should never be checked into git or be part of the config
#  make sure to have it in your shell environment i.e. "export TF_VAR_dialogflow_cx_github_token="your_secret_token"
#  also marked as sensitive to mask secret withing in logs etc ...

## The token is used within DialogFlow-CX to connect to the git repository for agent configuration
#  the terraform files are only deploying a minimal agent with no pages and intents, those need to
#  be  from the git repository after 
 
variable "dialogflow_cx_github_token" {
  type        = string
  description = "GitHub Personal Access Token"
  sensitive   = true  
}

variable "project_id" {
  default = "ferrous-pattern-447914-m1"
  type    = string
}

variable "region" {
  default = "us-central1"
  type    = string
}

variable "zone" {
  default = "us-central1-a"
  type    = string
}

variable "bucket_location" {
  default = "US"
  type    = string
}

variable "bucket_name" {
  default = "dialogflowcx-bucket-2039h324"
  type    = string
}

variable "agent_location" {
  default = "global"
  type    = string
}
