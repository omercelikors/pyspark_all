### STANDALONE PYSPARK CLUSTER
---------------------------
JupyterLab at localhost:8888;
Spark master at localhost:8081;
Spark worker I at localhost:8082;
Spark worker II at localhost:8083;

### HOW TO TRGIGGER BUILD.SH?
--------------------------------------
With this process, you will be creating all docker images.
chmod +x build.sh
sudo ./build.sh or sh build.sh or bash build.sh

### DOCKER
-----------------------------------------------------
* docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.State}}\t{{.CreatedAt}}"
* docker image prune -f

* docker-compose --profile flower up -d

* docker rmi -f $(docker images -aq) -> remove all images

* docker stop $(docker ps -a -q) -> stop all containers
* docker rm $(docker ps -a -q) -> remove all containers

* sudo systemctl start docker
* sudo systemctl daemon-reload
* sudo systemctl restart docker

* docker exec -it airflow-data_airflow-worker_1 /bin/bash -> open terminal session with default user in container

* docker exec -u 0 -it airflow-data_airflow-worker_1 /bin/bash -> open terminal session with root user in container


* The following only builds the images, does not start the containers:

    docker-compose build -d

* The following builds the images if the images do not exist and starts the containers:

    docker-compose up -d

* If you add the --build option, it is forced to build the images even when not needed:

    docker-compose up --build -d (If you change Dockerfile, you must use this commands)

* The following skips the image build process. If the images aren't built beforehand, it fails:

    docker-compose up --no-build -d

* Copy from container to host
    sudo docker cp airflow-data_airflow-worker_1:/opt/airflow/webserver_config.py ~/sc