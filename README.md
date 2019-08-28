## terraform-openshift-dsncerts

This is meant to be used as a module, make sure your module implementation sets all the variables in its terraform.tfvars file.

```terraform
module "dns" {
    source                   = "github.com/ibm-cloud-architecture/terraform-dns-cloudflare.git"

    cloudflare_email         = "${var.cloudflare_email}"
    cloudflare_token         = "${var.cloudflare_token}"
    cloudflare_zone          = "my-domain.com"

    num_nodes = 2
    num_cnames = 1

    nodes = {
        "node_a.my-domain.com" = "192.168.0.1",
        "node_b.my-domain.com" = "192.168.0.2"
    }

    cnames = {
        "my-domain-alias.my-domain.com" = "my-real-loadbalancer.my-domain.com"
    }
}
```

## Module Inputs Variables

|Variable Name|Description|Default Value|Type|
|-------------|-----------|-------------|----|
|cloudflare_email|Cloudflare Email Login|-|string|
|cloudflare_token|Cloudflare API Token|-|string|
|cloudflare_zone|DNS Zone to register VMs on|"${module.infrastructure.domain}"|string|
|nodes|nodes to create A records for, one-to-one mapping|-|map|
|cnames|cnames records, one-to-one mapping|-|map|
|num_nodes|number of nodes, to get around "count cannot be computed" errors|-|map|
|num_cnames|number of cnames, to get around "count cannot be computed" errors|-|map|


## Module Output
This module produces no output
