provider "flux" {
  kubernetes = {
    config_path = var.config_path
  }
  git = {
    url = var.github_repository
    http = {
      username = "git"
      password = var.github_token
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.target_path
}
