terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.23.0"
    }
  }
}

provider "google" {
  credentials = var.credentials_path
  project     = var.project_id
  region      = var.region
}

variable "credentials_path" {
  description = "path to sa credentials file"
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}