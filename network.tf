resource "google_compute_network" "default" {
  name                    = "${local.name}"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "default" {
  name                     = "${var.environment}-default"
  network                  = "${google_compute_network.default.self_link}"
  ip_cidr_range            = "${var.ip_cidr_range}"
  private_ip_google_access = "true"
}
