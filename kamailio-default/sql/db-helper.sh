#!/bin/sh

query=$(cat /etc/kamailio/sql/rtpengine.sql)
echo "$query"

kamctl db exec "$query"

kamctl db exec "select * from rtpengine"
