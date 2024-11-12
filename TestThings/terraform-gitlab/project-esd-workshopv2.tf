resource "gitlab_project" "project-esd-workshopv2" {
  name = "Workshop V2"
  namespace_id = gitlab_group.esd.id
  visibility_level = "private"
  description = "new Workshop V2 test repo"
}

resource "gitlab_project_membership" "worskshopv2-membership" {
  for_each = local.workshopv2-members
  project = gitlab_project.project-esd-workshopv2.id
  user_id = data.gitlab_user.gitlab-member[each.key].id
  access_level = each.value
}

locals {
  workshopv2-members = {
    "anil" = "owner",
    "marco" = "maintainer",
    "example" = "developer"
  }
}