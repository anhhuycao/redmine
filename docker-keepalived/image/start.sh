#!/bin/sh

nginx -g "daemon off;" &
wait -n
exit $?