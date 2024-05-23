terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
  required_version = "~> 1.5"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "portainer" {
  env = []
  name = "portainer"
  image = docker_image.portainer.image_id
  restart = "unless-stopped"
  network_mode = "a8c542978b5600050a39471c7d5e832a8528154790cd621813f449ddd0d79f30"
 }

resource "docker_image" "portainer" {
  name = "portainer/portainer-ce:latest"
}
