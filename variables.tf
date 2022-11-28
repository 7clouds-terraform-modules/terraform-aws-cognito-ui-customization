variable "USER_POOL_ID" {
  description = "Cognito's User Pool ID"
  type = string
}

variable "CLIENT_ID" {
  description = "Cognito's Client ID"
  type = string
  default = null
}

variable "CSS_TEMPLATE_FILE" {
  description = "String with a CSS code for configuring cognito's login page customization"
  type = string
  default = null
}

variable "IMAGE_FILE" {
  description = "Path to an image file for cognito's login page customization"
  type = string
  default = null
}