# Todos / Notes

## Roles

- move file-layout for lxc into setup2: done
  - find way to limit loop over container to single container or learn how to detect if their setup is finished

- certbot installation and configuration on master and optional cert-deployment to containers
  - exposing directory on master via alias and proxypassmatch:
    ``` 
        Alias /.well-known/ /var/www/lets-encrypt/.well-known/
        ProxyPassMatch ^/\.well-known/ !
    ``` 
- munin setup and container-integration (detect roles of container and provision container with appropriate plugins?)
- full youtrack setup via ansible (not just a shell-role)
  - added ``RequestHeader set X-Forwarded-Proto "https"``to ssl-vhost on master to make youtrack fully run under ssl 
- generate icinga2 monitoring conf-files for easy integration
- ~~maybe put iptables into its own role?~~ nope...

## IPv6

- allow incoming ipv6 for websites
- ipv6-address for containers
- does this still require a bridge?