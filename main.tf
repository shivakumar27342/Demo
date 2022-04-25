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

resource "google_pubsub_subscription" "subscription" {
  count = "${length(keys(var.topic["subscriptions"]))}"
  name = "${element(keys(var.topic["subscriptions"]), count.index)}"
  topic = "projects/${var.project-id}/topics/${var.topic["name"]}"
  project = "${var.project-id}"
  depends_on = ["["google_pubsub_topic.topic"]
}
