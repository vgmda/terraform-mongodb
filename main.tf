module "atlas_private_ips" {  
  source             = "./modules/atlas_private_ips"  
  atlas_project_id   = var.atlas_project_id  
  atlas_cluster_name = var.atlas_cluster_name  
}  
