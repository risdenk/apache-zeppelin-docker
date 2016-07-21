#!/bin/bash

set -e
set -o pipefail

/zeppelin/bin/zeppelin-daemon.sh start

tail -f /zeppelin/logs/*
