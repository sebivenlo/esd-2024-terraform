# Create group
resource "gitlab_group" "esd" {
  name        = "esd"
  path        = "esd"
  description = "esd-group"
  visibility_level = "private"
  project_creation_level = "maintainer"    # gitlab-rolen: owner, maintainer, developer, guest
  subgroup_creation_level = "maintainer"
}


# Add user to group/project
resource "gitlab_group_membership" "esd-group-member-example" {
  group_id      = gitlab_group.esd.id
  user_id      = gitlab_user.example.id
  access_level = "developer"
  expires_at   = "2024-12-31"
}
