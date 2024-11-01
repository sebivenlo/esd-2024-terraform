provider "gitlab" {
  token = var.gitlab_token
  base_url = data.gitlab_url
}