variable "atlas_public_key" {  
  description = "Atlas API Public Key"  
  type        = string  
}  
  
variable "atlas_private_key" {  
  description = "Atlas API Private Key"  
  type        = string  
  sensitive   = true  
}  
  
variable "atlas_project_id" {  
  description = "Atlas Project ID"  
  type        = string  
}  
  
variable "atlas_cluster_name" {  
  description = "Atlas Cluster Name"  
  type        = string  
}  
