[package]
name = "guestbook-dev"
version = "0.0.1"

[dependencies]
k8s = "1.28"
konfig = { path = "../../../../../konfig" }

[profile]
entries = ["../base/base.k", "main.k", "${konfig:KCL_MOD}/models/kube/render/render.k"]
