#!/bin/bash

# Coloca opção no arquivo base do resolv
# Não testado, deve funcionar
# O resto deve ser gerado dinamicamente

mkdir /etc/resolvconf
mkdir /etc/resolvconf/resolv.conf.d

echo "options timeout:1 attempts:1 rotate" > /etc/resolvconf/resolv.conf.d/base

