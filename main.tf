# Create a Project
resource "mongodbatlas_project" "atlas-project" {
  org_id = var.atlas_org_id
  name   = var.atlas_project_name
}
# Create a Database User
resource "mongodbatlas_database_user" "db-user" {
  username           = "user-1"
  password           = random_password.db-user-password.result
  project_id         = mongodbatlas_project.atlas-project.id
  auth_database_name = "admin"
  roles {
    role_name     = "readwrite"
    database_name = "${var.atlas_project_name}-db"
  }
}
# Create a Database Password
resource "random_password" "db-user-password" {
  length           = 16
  special          = true
  override_special = "_%@"
}
# Create Database IP Access List
resource "mongodbatlas_project_ip_access_list" "ip" {
  project_id = mongodbatlas_project.atlas-project.id
  ip_address = var.ip_address
}

