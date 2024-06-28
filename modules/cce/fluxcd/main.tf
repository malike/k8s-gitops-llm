resource "kubernetes_namespace" "fluxcd" {
  metadata {
    name = "flux-system"
  }
}

resource "helm_release" "fluxcd" {
  name       = "fluxcd"
  repository = "https://charts.fluxcd.io"
  chart      = "flux"
  namespace  = kubernetes_namespace.fluxcd.metadata[0].name
  version    = "1.3.0"

  set {
    name  = "git.url"
    value = var.flux_repo_url
  }

  set {
    name  = "git.branch"
    value = var.flux_branch
  }
}

resource "kubernetes_secret" "fluxcd" {
  metadata {
    name      = "flux-git-deploy"
    namespace = kubernetes_namespace.fluxcd.metadata[0].name
  }

  data = {
    identity = base64encode(file(var.flux_ssh_key_path))
  }

  type = "Opaque"
}