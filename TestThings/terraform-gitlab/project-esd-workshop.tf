# Create project which belongs to a specific group
resource "gitlab_project" "project-esd-workshop" {
  name = "Workshop"
  namespace_id = gitlab_group.esd.id
  visibility_level = "private"
  description = "Workshop test repo"
}

# Add user to group/project
resource "gitlab_project_membership" "test" {
  project      = gitlab_project.project-esd-workshop.id
  user_id      = gitlab_user.example.id
  access_level = "developer"
  expires_at   = "2024-12-31"
}
