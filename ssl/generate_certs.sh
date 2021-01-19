#!/bin/bash
openssl req -x509 -nodes -days 3650 -newkey rsa:4096 -keyout ./private/ssl-cert-snakeoil.key -out ./certs/ssl-cert-snakeoil.pem