required_providers {
  azurerm = {
    source  = "hashicorp/azurerm"
    version = "=4.1.0"
  }
}

provider "azurerm" "configurations" {
  for_each = var.subscriptions

  config {
    features {}
    resource_provider_registrations = "core"
    subscription_id                 = each.value
  }
}
