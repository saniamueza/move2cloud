terraform {

	required_providers{
	azurerm =  { 
	source="hashicorp/azurerm"
	version=">=4.20"
	}
	}


  backend "azurerm" {
    resource_group_name  = "dc-we-rg-tfstate"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "dcwessatfstate"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "pax.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}




provider "azurerm"{
subscription_id = "d9798cfc-55a7-452b-85e3-2800b4b4b3be"
features  {}
}
