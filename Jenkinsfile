pipeline {
    agent any
    
    stages {
        stage('Trydebug') {
            steps {
                sh 'whoami'
            }
        }
        
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build and Run Docker Image') {
            steps {
                script {
                    def customImage = docker.build("docker-image:${env.BUILD_ID}")
                    customImage.run("-d -p 3000:3000 --name ${env.JOB_NAME}-container_${env.BUILD_NUMBER}")
                }
            }
        }
    }
}


