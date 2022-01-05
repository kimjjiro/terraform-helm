resource "helm_release" "httpd" {
    count           = 1
    namespace       = "test"
    name            = "httpd"
    repository      = "./helm"
    chart           = "deploy"

    set {
        name    = "name"
        value   = "httpd"
    }
}

resource "helm_release" "httpd_hpa" {
    count           = 1
    namespace       = "test"
    name            = format("%s-%s", "httpd", "hpa")
    repository      = "./helm"
    chart           = "hpa"

    set {
        name    = "name"
        value   = "httpd"
    }
}

resource "helm_release" "nginx" {
    count           = 1
    namespace       = "test"
    name            = "nginx"
    repository      = "./helm"
    chart           = "deploy"
    
    set {
        name    = "name"
        value   = "nginx"
    }
}

resource "helm_release" "nginx_hpa" {
    count           = 1
    namespace       = "test"
    name            = format("%s-%s", "nginx", "hpa")
    repository      = "./helm"
    chart           = "hpa"

    set {
        name    = "name"
        value   = "nginx"
    }
}