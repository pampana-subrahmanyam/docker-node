# Step 1: Build image
sudo docker build . -t subbu/node-app
This will build an image
"subbu/node-app" is the image name
"-t" falg will add a tag
# Step 2: To list the images
sudo docker images
This will give you the list of iamges 
# Step 3: To run 
sudo docker run -p 4000:8084 -d subbu/node-app

-p flag indicates the port ,4000 is external port where request comes and we are redirecting them to port 8084 of docker

# Step 4:Check the running containers
docker ps
It will give the list of containers running in the system

# Step 5:
If you need to go inside the container you can use the exec command:
docker exec -it <container id> /bin/bash

docker exec -it d3139e7d462b /bin/bash


# Step 6:To kill the containsers
docker kill <container id>
You can get the container id from the docker ps command

# Docker Compose
1.You can run the application without docker compose also.
2.With Docker Compose, we no  need to remember very long commands to build , run or config  containers.
3.You can run docker-compose build and docker-compose up, your application will run effortlessly.

The first directive in the web service is to build the image based on our Dockerfile. This will recreate the image we used before, but it will now be named according to the project we are in, nodejsexpresstodoapp. After that, we are giving the service some specific instructions on how it should operate:

    command: npm run dev - Once the image is built, and the container is running, the npm run dev command will start the application.

    volumes: - This section will mount paths between the host and the container.

    .:/usr/app/ - This will mount the root directory to our working directory in the container.

    /usr/app/node_modules - This will mount the node_modules directory to the host machine using the buildtime directory.

    