variable "image_name" {
  default = "ghost:alpine"
}

variable "container_name" {
  default = "blog"
}

variable "internal_port" {
  description = "Internal port for the container"
  default     = "2368"
}

variable "external_port" {
  description = "Host port that maps to container internal port"
  default     = "8080"
}
