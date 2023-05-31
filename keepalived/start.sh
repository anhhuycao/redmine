#!/bin/bash

nginx -g "daemon off;" &
wait -n
exit $?