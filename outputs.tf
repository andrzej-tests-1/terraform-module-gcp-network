output "network" {
  description = "The URI of the network."
  value       = "${google_compute_network.default.self_link}"
}

output "subnetwork" {
  description = "The URI of the subnetwork."
  value       = "${google_compute_subnetwork.default.self_link}"
}
