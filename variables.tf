variable "env" {
  type = string
}

variable "api_name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "disable_execute_api_endpoint" {
  type    = bool
  default = false
}

variable "auto_deploy" {
  type    = bool
  default = true
}

################### CORS ###################
variable "enable_cors" {
  type    = bool
  default = true
}

variable "allow_credentials" {
  type    = bool
  default = false
}

variable "allow_headers" {
  type    = set(string)
  default = ["Content-Type", "X-Amz-Date", "Authorization", "X-Api-Key", "X-Amz-Security-Token", "X-Token"]
}

variable "allow_methods" {
  type    = set(string)
  default = ["GET", "POST", "PUT", "OPTIONS", "DELETE"]
}

variable "allow_origins" {
  type    = set(string)
  default = ["*"]
}

variable "expose_headers" {
  type    = set(string)
  default = ["*"]
}

variable "max_age" {
  type    = number
  default = 300
}