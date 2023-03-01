pipeline{
    agent any
    stages {
        stage('Clone stage'){
            steps
            {
               git credentialsId: 'webhook', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
        //build dockerfile
        stage('Build docker'){
            steps
            {
             withDockerRegistry(credentialsId: '1', url: 'https://index.docker.io/v1/') {
                sh 'docker build -t test:v1 -f Dockerfile .'
                sh 'docker run -p 6789:80 test:v1'
                }
            }
        }
        
    }
}