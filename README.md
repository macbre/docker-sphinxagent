# docker-sphinxagent
Docker image for [Sphinx agent](https://tools.sphinxsearch.com/) downloaded from [tools.sphinxsearch.com](https://tools.sphinxsearch.com/downloads/latest/).

**What's Sphinx Agent?** Read more at [sphinxsearch.com blog](http://sphinxsearch.com/blog/2015/01/31/sphinx-tools-beta-simplifying-sphinx-administration-monitoring/).

## Running

```
docker run --volume=/app/sphinx/your_sphinx_config_file.conf:/etc/sphinxsearch/sphinx.conf --env SPH_API_KEY=<YOU API KEY> sphinxmonitor:latest  
```

> API key is provided after registering at [tools.sphinxsearch.com](https://tools.sphinxsearch.com/node/newmon).
