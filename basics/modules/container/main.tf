resource "docker_container" "container_id" {
  name  = "${var.container_name}"
  image = "${var.image}"
  ports {
    internal = "${var.internal_port}"
    external = "${var.external_port}"
  }
}
