output "container_name" {
  value       = "${docker_container.container_id.name}"
  description = "The name of the container"
}


output "ip_address" {
  value = "${docker_container.container_id.ip_address}"
}
