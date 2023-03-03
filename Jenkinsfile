pipeline {
    agent any

    stages {
        stage('Stage Clone') {
            steps {
                    git branch: 'main', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'tomcat', passwordVariable: 'TOMCAT_PASSWORD', usernameVariable: 'TOMCAT_USERNAME')]) {
                    sh 'mvn tomcat7:deploy -Dtomcat.username=$TOMCAT_USERNAME -Dtomcat.password=$TOMCAT_PASSWORD'
                }
            }
        }

        stage('Deploy Docker') {
            steps {
                sh 'docker build -t myimage .'
                withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                }
                sh 'docker push myimage'
            }
        }
    }
}