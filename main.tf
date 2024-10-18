terraform {
  required_providers {
    netskope = {
    version = "0.2.6"
    source  = "netskopeoss/netskope"
    }
  }
}

provider "netskope" {
  baseurl  = var.baseurl
  apitoken = var.apitoken
}

resource "netskope_privateapps" "PrivateApp" {
  app_name = var.app_name
  host     = var.host


  protocols {
    type = "TCP"  # Specify the protocol type (e.g., HTTP, HTTPS, etc.)
    port = "80"     # Specify the port number
  }

  # You can add more protocols if needed
  protocols {
    type = "TCP"
    port = "443"
  }

  publisher {
    publisher_id = var.publisher_id
    publisher_name = var.publisher_name
    }
}
