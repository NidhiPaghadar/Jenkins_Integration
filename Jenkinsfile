pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('a54deac6-b2ca-4db6-a3f4-5c38ed14fad7')
    }
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                bat 'docker build -t nidhip1901/jenkins-docker-hub .'
            }
        }
        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'a54deac6-b2ca-4db6-a3f4-5c38ed14fad7', usernameVariable: 'DOCKERHUB_CREDENTIALS_USER', passwordVariable: 'DOCKERHUB_CREDENTIALS_PASSWORD')]) {
                    bat """
                        echo Logging in to Docker Hub...
                        docker login --username ${DOCKERHUB_CREDENTIALS_USER} --password ${DOCKERHUB_CREDENTIALS_PASSWORD}
                    """
                }
            }
        }
        stage('Docker Push image') {
            steps {
                bat 'docker push nidhip1901/jenkins-docker-hub'
            }
        }
    }
}
