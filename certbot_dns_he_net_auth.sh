#!/bin/bash
set -e

if [[ -z "${CERTBOT_DNS_HE_NET_TOKEN}" ]]; then
	echo "CERTBOT_DNS_HE_NET_TOKEN environment variables is empty"
	exit -1
fi

curl="/usr/bin/curl"
url="https://dyn.dns.he.net/nic/update"
hostname="_acme-challenge.$CERTBOT_DOMAIN"

$curl -s "$url" -d "hostname=$hostname" -d "password=$CERTBOT_DNS_HE_NET_TOKEN" -d "txt=$CERTBOT_VALIDATION"
