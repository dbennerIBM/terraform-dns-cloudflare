variable "cloudflare_email" {
  default = ""
}

variable "cloudflare_token" {
  default = ""
}

variable "cloudflare_zone" {}

variable "cnames" {
  type = "map"
  default = {}
}

variable "nodes" {
  type = "map"
  default = {}
}
