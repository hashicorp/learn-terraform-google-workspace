provider "googleworkspace" {}

resource "googleworkspace_user" "dwight" {
  primary_email = "dwight.schrute@${var.domain}"
  password      = "34819d7beeabb9260a5c854bc85b3e44"
  hash_function = "MD5"

  name {
    family_name = "Schrute"
    given_name  = "Dwight"
  }

  aliases = ["assistant_to_regional_manager@${var.domain}"]

  emails {
    address = "dwightkschrute@example.com"
    type    = "home"
  }

  organizations {
    department = "sales"
    location   = "Scranton"
    name       = "Dunder Mifflin"
    primary    = true
    symbol     = "DUMI"
    title      = "member"
    type       = "work"
  }

  phones {
    type    = "work"
    primary = true
    value   = "555-123-0987"
  }

  keywords {
    type  = "occupation"
    value = "salesperson"
  }

  recovery_email = "dwightkschrute@example.com"
}
