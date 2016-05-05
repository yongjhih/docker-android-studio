#!/usr/bin/env bash

UID=${UID:-1000}
GID=${GID:-1000}

usermod -u $UID -g $GID $USER > /dev/null 2>&1
groupmod -g $GID $USER > /dev/null 2>&1

exec sudo -i -u $USER "$@"
