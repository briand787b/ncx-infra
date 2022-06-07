terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.23.0"
    }
  }
}

provider "google" {
  credentials = "/home/scot/Downloads/ncx-man-sa.json"
  project     = "ncx-man"
  region      = "us-east1"
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}