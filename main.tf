


resource azurerm_resource_group "rg1" {
name = "dc-we-rg-pax"
location = "westeurope"
tags= { 
Department="ITO"
Role="RG"
CostCenter="3121212"
Location="London_LHR14"
}
}



resource azurerm_resource_group "rg2" {
name = "dc-we-rg-sam"
location = "westeurope"
tags= { 
Department="ITO"
Role="RG"
CostCenter="211212"
Location="London_LHR12"
}
}

resource azurerm_storage_account sta1 {
name = "dcwessatfstate"
location = "westeurope"
account_tier             = "Standard"
account_replication_type = "LRS"
resource_group_name = azurerm_resource_group.rg3.name
tags= { 
Department="Build team"
Role="RG"
CostCenter="2212"
Location="London_LHR2"
restype="Storage_Account"
}
}

resource azurerm_resource_group "rg3" {
name = "dc-we-rg-tfstate"
location = "westeurope"
tags= { 
Department="Build team"
Role="RG"
CostCenter="2212"
Location="London_LHR2",
STA="LRS_Standard"
}
}

resource "azurerm_storage_container" "asc1" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.sta1.name
  container_access_type = "private"
}


resource azurerm_resource_group "rg4" {
name = "dc-we-rg-uni"
location = "westeurope"
tags= { 
Department="ITO"
Role="RG"

}
}




