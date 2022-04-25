provider "google" {

 version = "~> 1.1.9"

 project     = var.project

 region      = var.region

 zone        = var.zone

 credentials = "engaged-mariner-346403-2defb2725716.json"

}