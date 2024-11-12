# Create user

resource "gitlab_user" "users" {
  for_each         = local.gitlab_users
  name             = each.value.name
  username         = each.value.username
  password         = each.value.password
  email            = each.value.email
  is_admin         = each.value.is_admin
  projects_limit   = each.value.projects_limit
  can_create_group = each.value.can_create_group
  is_external      = each.value.is_external
  reset_password   = each.value.reset_password
}

locals {
  gitlab_users = {
    "example" = {
      name             = "Example Foo"
      username         = "example"
      password         = "superPassword"
      email            = "gitlab@user.create"
      is_admin         = false
      projects_limit   = 4
      can_create_group = false
      is_external      = false
      reset_password   = true
    },
    "anil" = {
      name             = "Anil"
      username         = "Anil"
      password         = "superPassword"
      email            = "anil@user.create"
      is_admin         = false
      projects_limit   = 4
      can_create_group = true
      is_external      = false
      reset_password   = true
    },
    "marco" = {
      name             = "Marco"
      username         = "Marco"
      password         = "superPassword"
      email            = "marco@user.create"
      is_admin         = false
      projects_limit   = 4
      can_create_group = true
      is_external      = false
      reset_password   = true
    }
  }
}