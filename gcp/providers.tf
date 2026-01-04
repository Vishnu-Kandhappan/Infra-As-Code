provider "google" {
  credentials = file("devops-poc-482509-7611a4252157.json")
  project     = var.project_id
  region      = var.region
}

provider "google-beta" {
  credentials = file("devops-poc-482509-7611a4252157.json")
  project     = var.project_id
  region      = var.region
}