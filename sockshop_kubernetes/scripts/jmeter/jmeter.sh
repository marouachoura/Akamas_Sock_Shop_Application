#!/bin/bash

cd /opt/sockshop_kubernetes/scripts/jmeter/sokshop
mv result_jmeter_jtl.jtl  result_jmeter_jtl_$(date +%d-%m-%Y+%HH:%MM:%SS).jtl
mv result_jmeter_experiment.csv result_jmeter_experiment$(date +%d-%m-%Y+%HH:%MM:%SS).csv
rm -f resultWarmup.csv
cd /opt/sockshop_kubernetes/scripts/jmeter/apache-jmeter-5.5/bin
./jmeter.sh -n -t /opt/sockshop_kubernetes/scripts/jmeter/sokshop/sockshopScript.jmx -l /opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_jtl.jtl
./JMeterPluginsCMD.sh --generate-csv /opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_csv.csv --input-jtl /opt/sockshop_kubernetes/scripts/jmeter/sokshop/result_jmeter_jtl.jtl --plugin-type AggregateReport

python /opt/sockshop_kubernetes/akamas/customize_jmeter_result.py

