job "hello-devops" {

  datacenters = ["dc1"]

  type = "service"

  group "hello" {

    count = 1

    task "hello" {

      driver = "docker"

      config {
        image      = "localhost:5000/devops-hello:latest"
        force_pull = true
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
