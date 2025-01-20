## Modify environment as needed
#  at least version 5 of google tf modules is needed for git integration and discovery_engine


provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" 
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.0"
    }

  }
}
