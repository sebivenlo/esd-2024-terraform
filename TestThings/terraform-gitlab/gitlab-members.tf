# Get all gitlab-users
data "gitlab_user" "gitlab-member" {
  for_each = local.gitlab-member
  email = each.value
}


# List of users
locals {
  gitlab-member = {
    "anil" : "anil@user.create",
    "marco" : "marco@user.create",
    "example" : "gitlab@user.create"
  }
}