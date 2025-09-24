resource "azurerm_lb" "example" {
    for_each = var.var_lb

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = data.azurerm_public_ip.datapip.id
  }
}