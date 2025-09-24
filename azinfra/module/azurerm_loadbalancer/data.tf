data "azurerm_public_ip" "datapip" {
  name                = "infrapip01"
  resource_group_name = "pk_rg"
}
