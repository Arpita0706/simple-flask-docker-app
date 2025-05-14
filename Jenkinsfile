pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Arpita0706/simple-flask-docker-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('flask-docker-app')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 6000:6000 flask-docker-app'
                }
            }
        }
    }
}

