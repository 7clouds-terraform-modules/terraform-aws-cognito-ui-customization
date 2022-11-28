resource "aws_cognito_user_pool_ui_customization" "this" {
  user_pool_id = var.USER_POOL_ID
  client_id    = var.CLIENT_ID != null ? var.CLIENT_ID : null
  css          = var.CSS_TEMPLATE_FILE != null ? var.CSS_TEMPLATE_FILE : null
  image_file   = var.IMAGE_FILE != null ? filebase64(var.IMAGE_FILE) : null 
}
