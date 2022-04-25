resource "google_pubsub_topic" "test" {
  name = "var.topic"

  message_storage_policy {
    allowed_persistence_regions = [
      "var.region",
    ]
  }
}