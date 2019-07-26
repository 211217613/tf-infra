provider "docker" {

}

resource "docker_image" "image_id" {
    name = "ghost:latest"
    keep_locally = true
}

resource "docker_image" "ubuntu" {
    name = "ubuntu:latest"
    keep_locally = true
}

resource "docker_container" "container_id" {
    name = "ghost_blog"
    image = "${docker_image.image_id.latest}"
    ports {
        internal = 2368
        external = 8080
    }
}
