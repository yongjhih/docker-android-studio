#!/usr/bin/env bash

set -e

UID=${UID:-1000}
GID=${GID:-1000}

usermod -u $UID -g $GID $USER > /dev/null 2>&1
groupmod -g $GID $USER > /dev/null 2>&1

export ANDROID_HOME
export ANDROID_STUDIO

exec sudo ANDROID_HOME=$ANDROID_HOME -E -i -u $USER "$@"
