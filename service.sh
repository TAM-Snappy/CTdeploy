#!/bin/bash

if [ \$var_service = "apache" ]; then
  apt update -y
  apt install apache2 -y
fi

if [ \$var_service = "gcc" ]; then
  apt update -y
  apt install build-essential gcc -y
fi
