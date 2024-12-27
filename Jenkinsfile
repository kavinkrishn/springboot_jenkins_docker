pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'spring_jenkins:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the code...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Spring Boot application...'
                sh './mvnw clean package -DskipTests' // Replace with `mvn` if `mvnw` is not available
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker image...'
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push Docker Image') {
            steps {
                echo 'Pushing the Docker image to a registry...'
                withDockerRegistry([credentialsId: 'dockerhub-credentials', url: '']) {
                    sh 'docker tag $DOCKER_IMAGE your-dockerhub-repo/$DOCKER_IMAGE'
                    sh 'docker push your-dockerhub-repo/$DOCKER_IMAGE'
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the application...'
                sh 'docker run -d -p 8081:8081 $DOCKER_IMAGE'
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            sh 'docker rmi $DOCKER_IMAGE || true'
        }
        success {
            echo 'Build and deployment succeeded!'
        }
        failure {
            echo 'Build or deployment failed.'
        }
    }
}
