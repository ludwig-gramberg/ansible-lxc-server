# Todos

## Roles

- certbot/simp_le installation and configuration on master and optional cert-deployment to containers
  - used certbot
  - exposing directory on master via alias and proxypassmatch:
    ``` 
        Alias /.well-known/ /var/www/lets-encrypt/.well-known/
        ProxyPassMatch ^/\.well-known/ !
    ``` 
- munin setup and container-integration (detect roles of container and provision container with appropriate plugins?)
- full youtrack setup via ansible (not just a shell-role)
  - added ``RequestHeader set X-Forwarded-Proto "https"``to ssl-vhost on master to make youtrack fully run under ssl 
- generate icinga2 monitoring conf-files for easy integration
- maybe put iptables into its own role?

## IPv6

- allow incoming ipv6 for websites
- ipv6-address for containers
- does this still require a bridge?