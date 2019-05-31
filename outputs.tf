output "network" {
  description = "The URI of the network."
  value       = "${google_compute_network.default.self_link}"
}
