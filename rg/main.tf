module "rg" {
  source = "git@github.com:Seyfor-CSC/mit.resource-group.git?ref=v2.0.0"
  config = [
    {
      name     = "${var.name}-rg01"
      location = "westeurope"
    },
    {
      name     = "${var.name}-rg02"
      location = "westeurope"
    }
  ]
}
