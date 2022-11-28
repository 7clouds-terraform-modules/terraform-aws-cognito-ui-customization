# Cognito UI Customization Module by 7Clouds

Thank you for riding with us! Feel free to download or reference this respository in your terraform projects and studies

This module is a part of our product SCA — An automated API and Serverless Infrastructure generator that can reduce your API development time by 40-60% and automate your deployments up to 90%! Check it out at <https://seventechnologies.cloud>

Please rank this repo 5 starts if you like our job!

## Usage

The module customizes one or all cognito client(s) within an user pool.
It is possible to set a string with CSS for the cognito's login page configuration and an image also. At least one of these elements, must be used if you call this module. 

## Example

```hcl
 module "cognito_ui_customization" {
 source = "./"

# Required
 USER_POOL_ID = "your user pool id here" 

# Optional 
 CLIENT_ID    = "your cognito client id here" # If no client ID is provided, the customization will be applied to all clients within this user pool

# Structural (Its necessary to use at least one of the variables below)
 CSS_TEMPLATE_FILE = ".logo-customizable {max-width: 20%; max-height: 20%;}"
 IMAGE_FILE = "pathtofile" # Cognito does not support images above 100kb
# }

```

## Customizable fields for CSS

Terraform still does not accept a reference via path to a CSS file, instead you should provide a string with all the configuration you want to customize. You may use a heredoc syntax. Heredoc requires an extra line after it's closure, so pay attention.

The CSS template example was picked from Andrei Buntsev's article on [medium](https://medium.com/@andrew.buntsev/aws-cognito-ui-customization-bc39afd5b2f2) and it already consider each customizable element and it's attributes available on AWS Cognito

eg.:

```hcl
# TERRAFORM ATTRIBUTE EXAMPLE

css = <<EOF
.logo-customizable {
	max-width: 20%;
	max-height: 20%;
}

.banner-customizable {
	padding: 25px 0px 25px 0px;
	background-color: #ffffff;
}

.label-customizable {
	font-weight: 400;
}

.textDescription-customizable {
	padding-top: 10px;
	padding-bottom: 10px;
	display: block;
	font-size: 16px;
}

.idpDescription-customizable {
	padding-top: 10px;
	padding-bottom: 10px;
	display: block;
	font-size: 16px;
}

.legalText-customizable {
	color: #ffffffdb;
	font-size: 11px;
}

.submitButton-customizable {
	font-size: 14px;
	font-weight: bold;
	margin: 20px 0px 10px 0px;
	height: 40px;
	width: 100%;
	color: rgb(255, 255, 255);
	background-color: #0a3167;
}

.submitButton-customizable:hover {
	color: rgb(255, 255, 255);
	background-color: #0a3167;
}

.errorMessage-customizable {
	padding: 5px;
	font-size: 14px;
	width: 100%;
	background: #F5F5F5;
	border: 2px solid #D64958;
	color: #D64958;
}

.inputField-customizable {
	width: 100%;
	height: 34px;
	color: #555;
	background-color: #fff;
	border: 1px solid #ccc;
}

.inputField-customizable:focus {
	border-color: #107ed8;
	outline: 0;
}

.idpButton-customizable {
	height: 40px;
	width: 100%;
	text-align: center;
	margin-bottom: 15px;
	color: #fff;
	background-color: #5bc0de;
	border-color: #46b8da;
}

.idpButton-customizable:hover {
	color: #fff;
	background-color: #31b0d5;
}

.socialButton-customizable {
	height: 40px;
	text-align: left;
	width: 100%;
	margin-bottom: 15px;
}

.redirect-customizable {
    display: none;
    text-align: center;
}

.passwordCheck-notValid-customizable {
	color: #DF3312;
}

.passwordCheck-valid-customizable {
	color: #19BF00;
}

.background-customizable {
	background-color: #fff;
}
EOF

```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cognito_user_pool_ui_customization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_ui_customization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_CLIENT_ID"></a> [CLIENT\_ID](#input\_CLIENT\_ID) | Cognito's Client ID | `string` | `null` | no |
| <a name="input_CSS_TEMPLATE_FILE"></a> [CSS\_TEMPLATE\_FILE](#input\_CSS\_TEMPLATE\_FILE) | String with a CSS code for configuring cognito's login page customization | `string` | `null` | no |
| <a name="input_IMAGE_FILE"></a> [IMAGE\_FILE](#input\_IMAGE\_FILE) | Path to an image file for cognito's login page customization | `string` | `null` | no |
| <a name="input_USER_POOL_ID"></a> [USER\_POOL\_ID](#input\_USER\_POOL\_ID) | Cognito's User Pool ID | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->