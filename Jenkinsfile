pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
                echo 'Stage Source Code Management Git'
                git branch: 'main', url: 'https://github.com/devopsgittesting/Jenkins-Docker-pipeline.git'
            }
        }
    
         stage('Build') {
            steps {
                echo 'Building Stage...!'
            }
        }
    
         stage('Test') {
            steps {
                echo 'Testing Stage...!'
            }
        }
    
           stage('Deploy') {
            steps {
                echo 'Deployment Stage'
            }
        }
    
        
        
    }

    
}

