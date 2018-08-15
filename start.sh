#!/bin/bash
source build_varnish_config.sh > /etc/varnish/default.vcl
varnishd -p vcc_allow_inline_c=on -F  -f /etc/varnish/default.vcl &
# wait for varnish to start
sleep 10s
varnishlog
