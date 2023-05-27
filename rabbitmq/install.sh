#!/bin/bash

# using helm for installing rabbitmq
# first, you need to install helm - https://helm.sh/docs/intro/install/
# use rabbitmq helm charts by bitnami
helm install my-msg oci://registry-1.docker.io/bitnamicharts/rabbitmq
# my-msg is release name and will be use as prefix service