# deployments.tfdeploy.hcl

deployment "production" {
  inputs = {
    name          = "mit-tfstack-we" # resource type is filled in the module config
    subscriptions = ["de9f1f20-5a41-466c-867f-9191f5316e46", "c813f663-9930-455f-9450-d0acf61942d9"]
  }
}
