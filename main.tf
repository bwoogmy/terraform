provider "google" {
  project = var.GOOGLE_PROJECT
  region  = var.GOOGLE_REGION
}

module "gke_cluster" {
  source            = "github.com/bwoogmy/tf-google-gke-cluster.git//.?ref=clean-main"
  GOOGLE_PROJECT    = var.GOOGLE_PROJECT
  GOOGLE_REGION     = var.GOOGLE_REGION
  GKE_NUM_NODES     = var.GKE_NUM_NODES
  GKE_CLUSTER_NAME  = var.GKE_CLUSTER_NAME
  GKE_POOL_NAME     = var.GKE_POOL_NAME
  GKE_MACHINE_TYPE  = var.GKE_MACHINE_TYPE
}
