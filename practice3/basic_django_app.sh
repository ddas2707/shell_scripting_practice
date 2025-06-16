#!/bin/bash


<<task
Deploy a django app and handle the code for errors
task

code_clone() {
	echo "Cloning the Djnago app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

installing_requirements(){
	echo "Installing dependencies..."
	sudo apt-get install docker.io nginx -y
}

required_restarts(){
	sudo systemctl enable docker
	sudo systemctl enable nginx
}

deploy(){
	docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest	
}

echo "******************Deployment Started***********************"
if ! code_clone; then
        echo " The code directory already exists"	
	cd django-notes-app
fi

if ! installing_requirements; then
	echo "Installation Failed"
	exit 1
fi
if ! deploy; then
	echo "System Fault identified"
	exit 1
echo "*****************Deployment Finished***********************"

