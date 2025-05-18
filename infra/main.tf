module "resource_group" {
  source   = "./modules/resource_group"
  location = var.location
  env      = var.env
  app      = var.app

}

module "adls" {
  source = "./modules/adls"
  location = var.location
  env = var.env
  app = var.app
  resource_group_name = module.resource_group.resource_group_name
}

module "aml" {
  source = "./modules/aml"
  env = var.env
  location = var.location
  app = var.app
  resource_group_name = module.resource_group.resource_group_name
}