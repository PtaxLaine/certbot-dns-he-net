# certbot-dns-he-net
A certbot DNS plugin for dns.he.net


Check:
```sh
$ CERTBOT_DNS_HE_NET_TOKEN=you_name_com_accout \
certbot certonly  --manual --preferred-challenges dns -d yourdomain.tdl --manual-auth-hook ./certbot_dns_he_net_auth.sh --dry-run
```
