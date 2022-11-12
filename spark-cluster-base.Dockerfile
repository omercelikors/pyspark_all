ARG debian_buster_image_tag=8-jre-slim
FROM openjdk:${debian_buster_image_tag}

# -- Layer: OS + Python 3.7

RUN apt-get update -y && \
    apt-get install -y python3 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    rm -rf /var/lib/apt/lists/*

ARG spark_version=3.0.0

ARG jupyterlab_version=2.1.5

ARG matplotlib_version=3.5.2

ARG numpy_version=1.23.4

ARG pandas_version=1.5.1

ARG scikit_learn_version=1.1.3

ARG scipy_version=1.9.3

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    pip3 install wget pyspark==${spark_version} \
    jupyterlab==${jupyterlab_version} \
    matplotlib==${matplotlib_version} \
    numpy==${numpy_version} \
    pandas==${pandas_version} \
    scikit-learn==${scikit_learn_version} \
    scipy==${scipy_version}

# -- Runtime

CMD ["bash"]
