terraform {  
  required_providers {  
    mongodbatlas = {  
      source  = "mongodb/mongodbatlas"  
      version = "~> 1.14"  
    }  
    dns = {  
      source  = "hashicorp/dns"  
      version = "~> 3.4"  
    }  
  }  
}  
  
provider "mongodbatlas" {  
  public_key  = var.atlas_public_key  
  private_key = var.atlas_private_key  
}  
  
provider "dns" {}  
