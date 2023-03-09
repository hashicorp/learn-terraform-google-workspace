# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MIT

output "user_email" {
  value = [for value in googleworkspace_user.users: value.primary_email]
}
