#!/bin/bash
set -x
openssl req -x509 -newkey rsa:4096 -keyout kuard.key -out kuard.crt -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=CommonNameOrHostname"
minikube kubectl -- create secret generic kuard-tls --from-file=kuard.crt --from-file=kuard.key
