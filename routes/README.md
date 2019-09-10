Here is to storage routes for traefik

Remember to point a domain to your public ip
and port forward (your router configuration) 443 and 80 to your machine.

Example static.toml:

```toml
[backends]
    [backends.static]
      [backends.static.servers]
            [backends.static.servers.server0]
                url = "http://static:3000"
                weight = 1
[frontends]
  [frontends.static]
    backend = "static"
    passHostHeader = true
      [frontends.static.routes]
        [frontends.static.routes.route1]
          rule= "Host:yourdomain.com;PathPrefix:/"

```