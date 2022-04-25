resource "google_pubsub_topic" "eample" {
  name = "eample-topic"

  message_storage_policy {
    allowed_persistence_regions = [
      "us-central1",
    ]
  }
}
