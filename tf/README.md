# Terraform Infrastructure as Code

## Local Authentication
If you are running Terraform outside of Google Cloud, generate a service account key file and set the GOOGLE_APPLICATION_CREDENTIALS environment variable to the path of the JSON file. Terraform will use that file for authentication. Terraform supports the full range of authentication options documented for Google Cloud.