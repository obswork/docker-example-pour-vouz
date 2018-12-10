=== README ===

..or not.


To run this app-

1. clone this repo
2. cd docker-example-pour-vouz
3. docker build .
   * create a new image from the Dockerfile in the pwd
4. wait a moderate-ass time
5. docker image ls 
   * verify the docker image has been built
   * copy the IMAGE ID from the third column (e.g. 06c7f6828c91)
6. docker run -d -p 5000:3000 06c7f6828c91  (using your image's actual ID)
   * -d = run in detached mode (i.e. run in the background)
   * -p = map port 5000 (or..whatever) on your host machine to port 3000 inside the container
   * n.b. you can map the host port to any available port on your host machine, but you'll want
          to map it to the port explicitly exposed by your Dockerfile 
7. visit localhost:5000 in your browser
8. know the secret to life has forever been chopsticks


To stop (and remove) your running container-
1. docker container ls  (alternatively- docker ps)
   * verify your container is still running
   * copy the CONTAINER ID hash from the first column (e.g. b9d384157b8e)
2. docker container stop fb051660be8f  (using your container's actual ID)
   * stop your container
3. docker container rm fb051660be8f
   * remove the stopped container

(optional) remove the docker image
   * n.b. if you remove the docker image you will have to rebuild it again- if you plan on running the 
     containerized app again, however, you may choose to stop at step (3) -- or even step (2)

4. docker image ls
   * copy the IMAGE ID hash from the third column
5. docker image rm fb051660be8f
   * remove the unused docker image
