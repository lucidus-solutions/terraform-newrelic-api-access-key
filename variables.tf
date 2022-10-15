variable "account_id" {
  type        = string
  description = "The New Relic account ID"
  sensitive   = true
}

variable "app" {
  type        = string
  description = "The name of the application or project that the stack supports"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "The target environment for the stack - could be a tier or account level reference"
  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "demo", "perf", "nonprod", "prod"], var.env)
    error_message = "Must be one of the following: dev, qa, stage, prod, demo, perf,nonprod, prod"
  }
  sensitive = false
}

variable "ingest_type" {
  type        = string
  description = "Either BROWSER or LICENSE"
  default     = "LICENSE"
  sensitive   = false
}

variable "key_type" {
  type        = string
  description = "The type of key to create - either INGEST or USER"
  default     = "INGEST"
  sensitive   = false
}

variable "program" {
  type        = string
  description = "The name of the program that the application or project belongs to"
  sensitive   = false
}