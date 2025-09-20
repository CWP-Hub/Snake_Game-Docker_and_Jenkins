pipeline {
    agent any

    environment {
        IMAGE_NAME = "snake-web"
        CONTAINER_NAME = "snake-web-container"
        PORT = "8000"
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Cloning repository..."
                git branch: 'main', url: 'https://github.com/CWP-Hub/Snake_Game-Docker_and_Jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Stop Existing Container') {
            steps {
                echo "Stopping existing container if it exists..."
                sh """
                if [ \$(docker ps -q -f name=${CONTAINER_NAME}) ]; then
                    docker stop ${CONTAINER_NAME}
                    docker rm ${CONTAINER_NAME}
                fi
                """
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker container..."
                sh "docker run -d -p ${PORT}:80 --name ${CONTAINER_NAME} ${IMAGE_NAME}"
            }
        }
    }

    post {
        success {
            echo "Deployment completed! Access the game at http://<YOUR_SERVER_IP>:${PORT}"
        }
        failure {
            echo "Deployment failed."
        }
    }
}
