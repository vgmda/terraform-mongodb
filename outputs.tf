// Output for private cluster connection string
output "private_srv_connection_string" {  
  value = module.atlas_private_ips.private_srv_connection_string  
}  

// Output for private shard IPs
output "private_shard_ips" {  
  value = module.atlas_private_ips.private_shard_ips  
}  
