pipeline{
    agent any
    stages {
        stage('Clone stage'){
            steps
            {
               git credentialsId: 'webhook', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
    
        stage('SSH sever'){
            steps{
                sshagent(['ssh-remote']) {
                        sh 'ssh -o StrictHostKeyChecking=no -l root 192.168.0.104 touch test.txt'
                    }
                }
            }
        }
}