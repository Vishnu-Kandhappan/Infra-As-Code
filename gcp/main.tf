

data "google_compute_image" "selected" {
  family  = var.image_family
  project = var.image_project
}

locals {
  boot_image = var.machine_image != "" ? var.machine_image : data.google_compute_image.selected.self_link
}

resource "google_compute_instance_template" "instance_template" {
  name         = "monitoring-instance-template"
  machine_type = var.machine_type

  disk {
    boot         = true
    source_image = local.boot_image
    auto_delete  = true
  }

  scheduling {
    preemptible       = var.preemptible
    automatic_restart = var.preemptible ? false : true
    on_host_maintenance = var.preemptible ? "TERMINATE" : "MIGRATE"
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    startup-script = <<-EOF
      #!/bin/bash
      # Commands to install and configure monitoring services
      docker-compose -f /path/to/docker-compose.yml up -d
    EOF
  }
}

resource "google_compute_instance_group_manager" "instance_group" {
  name                    = "monitoring-instance-group"
  version {
    instance_template = google_compute_instance_template.instance_template.self_link
  }
  base_instance_name      = var.instance_name_prefix
  target_size             = var.num_instances
  zone                    = var.zone
}

resource "google_compute_autoscaler" "autoscaler" {
  name                = "monitoring-autoscaler"
  zone                = var.zone
  target              = google_compute_instance_group_manager.instance_group.self_link
  autoscaling_policy {
    min_replicas = var.min_replicas
    max_replicas = var.max_replicas

    cpu_utilization {
      target = var.cpu_target
    }
  }
}
