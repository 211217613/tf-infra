resource "docker_image" "image_id" {
  name         = "${var.image_name}"
  keep_locally = true
}

resource "docker_image" "ubuntu" {
  name         = "ubuntu:latest"
  keep_locally = true
}

resource "docker_container" "container_id" {
  name  = "${var.container_name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.internal_port}"
    external = "${var.external_port}"
  }
}
