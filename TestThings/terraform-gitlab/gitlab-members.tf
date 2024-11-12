# Get all gitlab-users
data "gitlab_user" "gitlab-member" {
  for_each = local.gitlab-member
  email = each.value
  depends_on = [gitlab_user.users]
}


# List of users
locals {
  gitlab-member = {
    "anil" : "anil@user.create",
    "marco" : "marco@user.create",
    "example" : "gitlab@user.create"
  }
}