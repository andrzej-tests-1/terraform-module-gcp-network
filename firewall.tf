resource "google_compute_firewall" "allow-ssh" {
  name    = "${var.environment}-allow-ssh"
  network = "${google_compute_network.default.self_link}"

  allow {
    protocol = "tcp"

    ports = [
      "22",
    ]
  }

  source_ranges = [
    "0.0.0.0/0",
  ]

  target_tags = [
    "allow-ssh",
  ]
}
