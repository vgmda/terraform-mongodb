output "private_srv_connection_string" {  
  value = module.atlas_private_ips.private_srv_connection_string  
}  
  
output "private_shard_ips" {  
  value = module.atlas_private_ips.private_shard_ips  
}  
