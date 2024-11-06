resource "gitlab_project" "project-test" {
  name = "Test"
  visibility_level = "public"
  description = "test repo"
}