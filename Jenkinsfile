pipeline {

  agent any

  stages {
        stage('Stage Clone'){
            steps{
                git branch: 'main', url: 'https://github.com/tangtuphuc/portforlio.git'
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
