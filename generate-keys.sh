#!/bin/bash

# Example of subject as pointed out by AOSP
# subject='/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'

subject='/C=JP/ST=Tokyo/L=Tokyo/O=Haruka LLC./OU=Haruka LLC./CN=Haruka LLC./emailAddress=legal@evolution-x.org'
for x in testkey releasekey platform shared media networkstack; do \
    ../../../../../../development/tools/make_key ./$x "$subject"; \
done

openssl genrsa -out evolution_rsa2048.pem 2048
openssl genrsa -out evolution_rsa4096.pem 4096
