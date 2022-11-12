FROM spark-cluster-base

# -- Layer: JupyterLab

ARG spark_version=3.0.0

# -- Runtime

EXPOSE 8888

WORKDIR /opt/jupyterlab_apps

CMD jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=
