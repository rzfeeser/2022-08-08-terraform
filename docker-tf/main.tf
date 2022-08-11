/* Alta3 Research - rzfeeser@alta3.com
   Lifecycle NGINX on a docker instance */

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

# here we could pass socket(s) of dockers to connect to
provider "docker" {}

# we want this image to be present
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 2224
  }
}
