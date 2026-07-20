module "infra" {
  source = "../../modules/infra"

  project            = var.project
  environment        = "production"
  dc                 = var.dc
  server_count       = var.server_count
  server_type        = var.server_type
  server_image       = var.server_image
  ssh_user           = var.ssh_user
  ssh_authorized_key = var.ssh_authorized_key
  ssh_priv_key_file  = var.ssh_priv_key_file
  cloudflare_zone_id = var.cloudflare_zone_id
  network_cidr       = var.network_cidr
  subnet_cidr        = var.subnet_cidr
  domain             = var.domain
}
