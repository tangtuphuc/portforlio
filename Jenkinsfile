pipeline{
    agent any
    stages {
        stage('Clone'){
            steps
            {
               git branch: 'main', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
        //build dockerfile
        stage('Build docker'){
            steps
            {
              withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
                sh 'docker build -t tangtuphuc/nodejs-test:v10 .'
                sh 'docker push -t tangtuphuc/nodejs-test:v10 .'
                }
            }
        }
        
    }
}