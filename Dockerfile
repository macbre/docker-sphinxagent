# Dockerfile for Sphinx Agent
# @see http://sphinxsearch.com/blog/2015/01/31/sphinx-tools-beta-simplifying-sphinx-administration-monitoring/
FROM  bitnami/minideb:stretch

# https://tools.sphinxsearch.com/downloads/latest/
ENV SPHINX_MONITOR_VERSION 0.5.5

RUN apt-get update && apt-get install -y wget

RUN mkdir -p /opt/sphinxmonitor

# https://tools.sphinxsearch.com/downloads/latest/sphinxmonitor-0.5.6-debian_x86_64.tar.gz
RUN wget https://tools.sphinxsearch.com/downloads/latest/sphinxmonitor-${SPHINX_MONITOR_VERSION}-debian_x86_64.tar.gz -O /tmp/sphinxmonitor.tar.gz
RUN cd /opt/sphinxmonitor && tar -xf /tmp/sphinxmonitor.tar.gz && rm /tmp/sphinxmonitor.tar.gz

# point to binaries
ENV PATH "${PATH}:/opt/sphinxmonitor/bin"
RUN sphinxmonitor

#CMD searchd --nodetach --config /opt/sphinx/conf/sphinx.conf
