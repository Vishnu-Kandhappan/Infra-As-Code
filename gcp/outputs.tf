output "project_name" {
  value = "monitoring-platform"
}

output "gcp_project_id" {
  value = var.project_id
}

output "gcp_region" {
  value = var.region
}

output "gcp_zone" {
  value = var.zone
}

output "instance_group_name" {
  value = google_compute_instance_group_manager.instance_group.name
}

output "instance_template_name" {
  value = google_compute_instance_template.instance_template.name
}

output "autoscaler_name" {
  value = google_compute_autoscaler.autoscaler.name
}
