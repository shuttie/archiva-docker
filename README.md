# archiva-docker
A docker image for [Apache Archiva](https://archiva.apache.org/index.cgi), a simple maven repository manager. Available at docker hub as `shutty/archiva:2.2.0`.

### How to deploy
As a requirement, you need docker and docker-compose services set up on a host machine. The deploy should be pretty sitaightforward:

    git clone https://github.com/shuttie/archiva-docker.git
    cd archiva-docker
    docker-compose up
    
After that Archiva must become available on 0.0.0.0:8080. The folders `/data`, `/conf` 
and `/repositories` from the git repo are mounted as a volumes inside container, so the container
data should survive its restarts.
