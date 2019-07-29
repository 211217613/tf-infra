resource "docker_image" "image_id" {
  name         = "${lookup(var.image_name, var.env)}"
  keep_locally = true
}

resource "docker_image" "ubuntu" {
  name         = "ubuntu:latest"
  keep_locally = true
}

resource "docker_container" "container_id" {
  name  = "${lookup(var.container_name, var.env)}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.internal_port}"
    external = "${lookup(var.external_port, var.env)}"
  }
}
