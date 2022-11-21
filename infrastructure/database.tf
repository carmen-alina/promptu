resource "mongodbatlas_cluster" "promptu-db" {
  project_id    = var.promptu_mongo_db_project_id
  name          = "promptu-db"

  provider_name               = "TENANT"
  backing_provider_name       = "AWS"
  provider_instance_size_name = "M0" # smallest free tier DB

  provider_region_name = "EU_WEST_2"
}