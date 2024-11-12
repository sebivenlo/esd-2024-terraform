# Create user
resource "gitlab_user" "example" {
  name             = "Example Foo"
  username         = "example"
  password         = "superPassword"
  email            = "gitlab@user.create"
  is_admin         = false
  projects_limit   = 4
  can_create_group = false
  is_external      = false
  reset_password   = true
}

resource "gitlab_user" "anil" {
  name             = "anil"
  username         = "Anil"
  password         = "superPassword"
  email            = "anil@user.create"
  is_admin         = false
  projects_limit   = 4
  can_create_group = true
  is_external      = false
  reset_password   = true
}

resource "gitlab_user" "marco" {
  name             = "marco"
  username         = "Marco"
  password         = "superPassword"
  email            = "marco@user.create"
  is_admin         = false
  projects_limit   = 4
  can_create_group = true
  is_external      = false
  reset_password   = true
}
