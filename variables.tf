variable "project_id" {
  description = "The GCP Project ID. Replace with your actual project ID."
  type        = string
  default     = "school-tracking-490720" # based on helm charting
}

variable "region" {
  description = "The GCP region to deploy resources in"
  type        = string
  default     = "us-east4"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "school-tracking-cluster"
}

variable "repository_name" {
  description = "The name of the Artifact Registry repository"
  type        = string
  default     = "image-register2"
}
