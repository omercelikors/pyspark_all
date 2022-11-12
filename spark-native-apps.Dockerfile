FROM spark-cluster-base

# -- Layer: app

# -- Runtime

WORKDIR /opt/native_apps

CMD ["sleep", "infinity"]
