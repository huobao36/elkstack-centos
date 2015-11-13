#!/bin/sh

if [ $# -lt 1 ]
then
  echo "Usage: $0 <inventory> <playbook (without .yml)> [debug]"
  echo "Use \"site\" for playbook name"
  exit 1
fi

export ANSIBLE_HOST_KEY_CHECKING=False

DEBUG=""

if [ "debug" = "$3" ]
then
  DEBUG="-C"
fi


if [ "local" = "$1" ]
then
  ansible-playbook $DEBUG --ask-pass -i hosts $1.yml
else
  ansible-playbook $DEBUG --ask-pass -i hosts $1.yml 
fi

