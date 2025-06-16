#!/bin/bash



code_clone() {
        echo "Cloning the Djnago app..."
        git clone https://github.com/LondheShubham153/django-notes-app.git
}

installing_requirements(){
    echo "Installing dependencies..."

    sudo apt-get update
    sudo apt-get install -y ca-certificates curl gnupg lsb-release

    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
        sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

    echo \
      "deb [arch=$(dpkg --print-architecture) \
      signed-by=/etc/apt/keyrings/docker.gpg] \
      https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt-get update
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io nginx
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
	sudo systemctl restart docker
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
fi
echo "*****************Deployment Finished***********************"
