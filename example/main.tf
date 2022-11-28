module "cognito_ui_customization" {
source = "../"
USER_POOL_ID = "your user pool id here" 
CLIENT_ID    = "your cognito client id here" 
CSS_TEMPLATE_FILE = ".logo-customizable {max-width: 20%; max-height: 20%;}"
IMAGE_FILE = "pathtofile"
}