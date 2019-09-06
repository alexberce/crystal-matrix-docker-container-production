# Docker Container for CrystalMatrix
Docker with CentOS 7, systemd, Apache2, PHP7.0, crond, composer and pagespeed

# Prerequisites

    * Docker
    * Docker-compose (optional)
    * Kitematic (optional)

# Build 

Build the Docker image locally to test the changes before commiting to master.
```<Don't forget the extra dot at the end>```

```
docker build -t crystalmatrix/crystal-matrix-production .
```

# Pull
```
docker pull crystalmatrix/crystal-matrix-production
```

# Push

DockerHub autmotaically builds the image on every commit to the ```master``` branch of this repository. However, you can push tags manually with the following command if you want.

```
docker push crystalmatrix/crystal-matrix-production:tagname
```