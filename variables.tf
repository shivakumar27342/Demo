variable "project_id" {

  type        = string

}

variable "zone" {

  type        = string

} 
variable "region" {

  type        = string

}
 
variable "repo_name" {
  type        = string
}

variable "topic" {
  default = {
    name = "topic-1"
    publisher = ["publisher-1"]
#     subscriptions = {
#       subscription-1 = ["subscriber-1"]
#     }
  }  
}
