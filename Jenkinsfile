pipeline {

  agent any

  stages {
        stage('Stage Clone'){
            steps{
                git branch: 'main', url: 'https://github.com/tangtuphuc/portforlio.git'
            }
        }
        stage('Setup') {
        steps {
            sh 'apt-get update'
            sh 'apt-get install -y nodejs'
            sh 'apt-get install -y npm'
            sh 'npm install -g npm@latest'
            }
            }
        stage('Stage Build'){
            steps{
                 sh 'npm install'
                 sh 'npm run build'
            }
        }

        
    }

}
