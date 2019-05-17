#!/bin/bash

#genenrates a list or random passwords

# A random number as a password
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}$(date +%s) | sha256sum"
