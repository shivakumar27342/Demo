resource "google_project_service" "pubsub-service" {
  project = "${var.project-id}"
  service = "pubsub.googleapis.com"
  provisioner "local-exec" {
    command = "sleep 60"
  }
}
resource "google_pubsub_topic" "mytopic" {
  name = "${var.topic["name"]}"
  project = "{var.prohect-id}"
  depends_on = ["google_project_service.pubsub-service"]
}
