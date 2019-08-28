provider "cloudflare" {
}

resource "cloudflare_record" "node_a" {
  count = "${length(var.nodes)}"

  domain = "${var.cloudflare_zone}"
  name = "${element(keys(var.nodes), count.index)}"
  value = "${element(values(var.nodes), count.index)}"

  type = "A"
  ttl = 1
}

resource "cloudflare_record" "cname" {
  count = "${length(var.cnames)}"

  domain = "${var.cloudflare_zone}"
  name = "${element(keys(var.cnames), count.index)}"
  value = "${element(values(var.cnames), count.index)}"

  type = "CNAME"
  ttl = 1
}