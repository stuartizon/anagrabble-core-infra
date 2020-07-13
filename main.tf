terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    organization = "anagrabble"
    workspaces {
      prefix = "anagrabble-core-"
    }
  }
}

provider "aws" {
  version = "~> 2.0"
  region = "ap-southeast-2"
}

resource "aws_ecs_cluster" "default" {
  name = "default"
  capacity_providers = [
    "FARGATE"
  ]
}