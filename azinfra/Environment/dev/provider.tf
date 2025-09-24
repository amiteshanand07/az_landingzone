terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "dev-rg"        # replace with your RG
    storage_account_name = "azstoragepk"                # your storage account
    container_name       = "pkcont"             # your blob container
    key                  = "dev.terraform.tfstate"         # state file name
    use_azuread_auth     = true                          # use Azure AD authentication
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  subscription_id = "8a5b9680-df5b-4e27-a4a2-ea7f28c1331c"
}
