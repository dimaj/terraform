terraform {
  required_providers {
    authentik = {
      source = "goauthentik/authentik"
      version = "2023.8.0"
    }
  }

  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "s3.us-west-001.backblazeb2.com" # this region is found on your bucket page
    region                      = "us-east-1"                      # meaningless, but the provider needs it. It can be any string
    bucket                      = "dimaj-terraform-states"         # replace this with your bucket name
    key                         = "authentik.tfstate"              # replace this with your state file name (e.g. terraform.tfstate)
  }
}

provider "authentik" {
}

