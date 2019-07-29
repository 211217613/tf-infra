variable "env" {
  description = "env: dev or prod"
}

variable "image_name" {
  type = "map"
  description = "image for the container"
  default = {
    prod = "ghost:alpine"
    dev = "ghost:latest"
  }
}

variable "container_name" {
  type = "map"
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}

variable "internal_port" {
  description = "Internal port for the container"
  default     = "2368"
}

variable "external_port" {
  type = "map"
  description = "Host port that maps to container internal port"
  default     = {
    dev = "8080"
    prod = "8081"
  }
}
