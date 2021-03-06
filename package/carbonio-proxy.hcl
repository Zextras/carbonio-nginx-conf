services {
  check {
    tcp = "127.0.0.1:443"
    timeout = "1s"
    interval = "5s"
  }
  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "carbonio-files"
            local_bind_port = 20000
            local_bind_address = "127.78.0.1"
          },
          {
            destination_name = "carbonio-chats"
            local_bind_port = 20001
            local_bind_address = "127.78.0.1"
          },
          {
            destination_name = "carbonio-docs-connector"
            local_bind_port = 20002
            local_bind_address = "127.78.0.1"
          },
          {
            destination_name = "carbonio-docs-editor"
            local_bind_port = 20003
            local_bind_address = "127.78.0.1"
          },
          {
            destination_name = "carbonio-chats-messaging-http"
            local_bind_port = 20004
            local_bind_address = "127.78.0.1"
          },
          {
            destination_name = "carbonio-chats-messaging-xmpp"
            local_bind_port = 20005
            local_bind_address = "127.78.0.1"
          }
        ]
      }
    }
  }
  name = "carbonio-proxy"
  port = 443
}