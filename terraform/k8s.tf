resource "scaleway_k8s_cluster" "k8s" {
  name    = "k8s"
  version = "1.20.14"
  cni     = "calico"
}

resource "scaleway_k8s_pool" "default" {
  cluster_id          = scaleway_k8s_cluster.k8s.id
  container_runtime   = "docker"
  name                = "default"
  node_type           = "dev1_m"
  size                = 2
  autoscaling         = true
  autohealing         = true
  min_size            = 2
  max_size            = 3
  wait_for_pool_ready = true
}
