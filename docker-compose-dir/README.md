TASK-1:

In this directory, We are Deploying the applications using docker-compose command

Container 1:

This is our Backend Flask application which runs our Python file using uwsgi on Port 8000.

Folder name: uwsgi

Container 2:

This is a frontend application, we named it as web. Running on Port 3000.

Folder name: frontend

Container 3:

This is Proxy server, named as nginx. Running on Port 80.

Folder name: nginx

Here, we are integrating the frontend application with the flask application using the service name "uwsgi".

Through Nginx, by default the requests will be pointed to the frontend application. 

And Subpath /stats requests will pointed to the Backend application.

To start this, run the command

    docker-compose up --build
    
Now check the application, with the Port 80.
