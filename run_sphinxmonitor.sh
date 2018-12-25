#!/bin/bash
echo "Starting Sphinx Monitor ${SPHINX_MONITOR_VERSION}..."
echo
echo "API key provided: ${SPH_API_KEY}"
echo

# prepare config JSON file
sed  -i -e "s/REPLKEY/${SPH_API_KEY}/g" /opt/sphinxmonitor/conf/sphinxagent.json

sphinxmonitor --debug \
	-p /opt/sphinxmonitor \
	-c /opt/sphinxmonitor/conf/sphinxagent.json \
	start
