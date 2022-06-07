terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.23.0"
    }
  }

  backend "gcs" {
    bucket = "ncx-auto-tf-state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}
