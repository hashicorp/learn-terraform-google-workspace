provider "googleworkspace" {}

locals {
  users = csvdecode(file("${path.module}/users.csv"))
}

resource "googleworkspace_user" "users" {
  for_each = { for user in local.users : user.first_name => user }

  primary_email = each.value.email
  password      = each.value.password
  hash_function = each.value.password_hash_function

  name {
    family_name = each.value.last_name
    given_name  = each.value.first_name
  }


  recovery_email = each.value.recovery_email
}


output "user_ids" {
  value = [for value in googleworkspace_user.users: value.id]
}
