variable "project-id" {
  default = "My First Project"

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

variable "my-topic-1" {
  default = {
    name = "my-topic-1"
    publisher = ["publisher-1"]
    subscriptions = {
      subscription-1 = ["subscriber-1"]
    }
  }  
}
