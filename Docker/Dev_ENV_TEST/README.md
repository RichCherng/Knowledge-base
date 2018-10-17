

# BUILD
docker build -t ubuntu_image .



# Creare container with mounted current directory
docker container run -dit -p 8080 -v $(pwd):/usr/workspace --name dev_env ubuntu_image


# RUN in interactive

    docker container exec -it dev_env bash