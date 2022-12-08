TASK-1
In this directory, we are starting the applications using docker-compose command

Container 1:
This is our backend Flask application which runs our Python file using uwsgi on Port 8000.

Container 2:
This is a frontend application, we named it as web. Running on Port 3000.

Container 3:
This is Proxy server, named as nginx. Running on Port 80.
In this , we configured locations to proxy to respective paths.
By default, it will proxied to frontend application. 
[Also we have a subpath /stats , it will point to Backend application ]. 

#To start this, run the command

docker-compose up --build
