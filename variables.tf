variable "baseurl" {
  description = "The base URL for the Netskope instance."
  type        = string
}

variable "apitoken" {
  description = "The API token for Netskope."
  type        = string
}

variable "app_name" {
  description = "The name of the Private App to be created."
  type        = string
}

variable "host" {
  description = "The host for the Private App."
  type        = string
}
variable "publisher_id" {
  description = "TESTING"
  type = string
  
}
variable "publisher_name" {
  description = "ID of the existing publisher"
  type        = string

}