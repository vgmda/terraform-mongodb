output "private_srv_connection_string" {  
  value = data.mongodbatlas_cluster.my_cluster.connection_strings[0].private_srv  
}  
  
output "private_shard_ips" {  
  value = { for host, rec in data.dns_a_record_set.shard_ips : host => rec.addrs }  
}