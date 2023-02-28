pipeline{
    agent any
    stages {
        stage('Clone stage'){
            steps
            {
               git branch: 'main', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
        //build dockerfile
        stage('Build docker'){
            steps
            {
             withDockerRegistry(credentialsId: '1', url: 'https://index.docker.io/v1/') {
                sh 'docker build -t tangtuphuc/myct'
                sh 'docker push -t tangtuphuc/myct'
                }
            }
        }
        
    }
}