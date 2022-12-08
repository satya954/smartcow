TASK 3:
This Directory contains deployment of containers through Kubernetes using minikube.

In each POD folder, there contains a Dockerfile (which is used to build the image) and Kubernetes Deployment , Service yaml files.

After Initiating the minikube start command,

      minikube start

Deploy the pods and services in each folders.

POD1 refers to the Backend / UWSGI Flask application
      kubectl create -f pod1/deploy.yaml
      kubectl create -f pod1/service.yaml

POD2 referes to the Frontend / NodeJS application.
      kubectl create -f pod2/deploy.yaml
      kubectl create -f pod2/service.yaml

Here, we are integrating the frontend application with the backend(flask) application using the service name we created through service.yaml file.

After deploying the both applications, we need to Install the Ingress.

Here, i deployed ingress-controller.
mandatory.yaml refers to the ingress related namespace,deployments,services.

    kubectl create -f mandatory.yaml

Now enable the Ingress addon in minikube.

    minikube addons enable ingress.


After Installing the Ingress controller, now install the ingress.yaml which is used to create the subpaths for the ingress.

    kubectl create -f ingress.yaml
    
Now Check the Minikube node IP, and check the URL from the minikube.

In the Ingress,
/  Points to the Nodejs application 
/stats points to the Flask application.




