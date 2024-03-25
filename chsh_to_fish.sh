#!/bin/bash

fish_path=$(which fish)

if [ -n "$fish_path" ]; then
  grep -qxF "$fish_path" /etc/shells || echo "$fish_path" >> /etc/shells
else
  echo "Could not found fish shell"
fi
