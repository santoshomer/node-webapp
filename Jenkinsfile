pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Run Docker Image') {
            steps {
                script {
                    //def customImage = docker.build("docker-image:${env.BUILD_ID}")
                    sh 'sudo docker build -t docker-image:latest .'
                    //customImage.run("-d -p 3000:3000 --name ${env.JOB_NAME}-container_${env.BUILD_NUMBER}")
                }
            }
        }
    }
}


