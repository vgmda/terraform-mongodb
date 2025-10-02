data "mongodbatlas_cluster" "my_cluster" {  
  project_id = var.atlas_project_id  
  name       = var.atlas_cluster_name  
}  
  
locals {  
  private_srv_hostname = replace(  
    data.mongodbatlas_cluster.my_cluster.connection_strings[0].private_srv,  
    "mongodb+srv://",  
    ""  
  )  
  private_srv_fqdn = "_mongodb._tcp.${local.private_srv_hostname}"  
}  
  
data "dns_srv_record_set" "private_srv_records" {  
  service = local.private_srv_fqdn  
}  
  
data "dns_a_record_set" "shard_ips" {  
  for_each = {  
    for rec in data.dns_srv_record_set.private_srv_records.srv :  
    rec.target => rec  
  }  
  host = each.key  
}  

terraform {  
  required_providers {  
    mongodbatlas = {  
      source  = "mongodb/mongodbatlas"  
      version = "~> 1.14"  
    }  
  }  
}  
