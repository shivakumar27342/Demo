resource "google_project" "project_id" {
  project = "${var.project_id}"
}
resource "google_pubsub_topic" "topic" {
  name = "{var.topic}"
  project = "{var.project_id}"
}

# resource "google_pubsub_subscription" "subscription" {
#   count = {length(keys(var.topic["subscriptions"]))
#   name = element(keys(var.topic["subscriptions"]), count.index)
#   topic = "projects/${var.project-id}/topics/${var.topic["name"]}"
#   project = "${var.project_id}"
#   depends_on = [
#     google_pubsub_topic.topic
#   ]
# }

  
  
