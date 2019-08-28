variable "cloudflare_email" {
  default = ""
}

variable "cloudflare_token" {
  default = ""
}

variable "cloudflare_zone" {}

variable "num_nodes" {
  default = 0
}

variable "nodes" {
  type = "map"
  default = {}
}

variable "cnames" {
  type = "map"
  default = {}
}

variable "num_cnames" {
  default = 0
}
