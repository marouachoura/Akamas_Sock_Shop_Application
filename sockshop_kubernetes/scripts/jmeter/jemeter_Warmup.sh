#!/bin/bash

cd /opt/sockshop_kubernetes/scripts/jmeter/sokshop
rm -f result0.csv
cd /opt/sockshop_kubernetes/scripts/jmeter/apache-jmeter-5.5/bin
./jmeter.sh -n -t /opt/sockshop_kubernetes/scripts/jmeter/sokshop/sockshopScript_Warmup.jmx -l /opt/sockshop_kubernetes/scripts/jmeter/sokshop/resultWarmup.csv

