[package]
name = "nginx-example-dev"
version = "0.0.1"

[dependencies]
k8s = "1.31.2"
konfig = { path = "../../../../" }

[profile]
entries = ["../base/base.k", "main.k", "${konfig:KCL_MOD}/models/kube/render/render.k"]
