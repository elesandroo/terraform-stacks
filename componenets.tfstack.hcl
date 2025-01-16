# components.tfstack.hcl

component "resource_group" {
  for_each = var.subscriptions
  source   = "./rg"
  inputs = {
     name = var.name
  }
  providers = {
    azurerm = provider.azurerm.configurations[each.value]
  }
}
