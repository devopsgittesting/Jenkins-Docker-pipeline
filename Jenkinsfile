pipeline {
    agent any

  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerHub2')
     }

    stages {
        stage('SCM') {
            steps {
                echo 'Stage Source Code Management Git'
                git branch: 'main', url: 'https://github.com/devopsgittesting/Jenkins-Docker-pipeline.git'
            }
        }
    
         stage('Build') {
            steps {
                echo 'Building Docker Image..!'
		 sh "docker build -t devopstest777/httpd_server:latest ."
            }
        }



	  stage('Pushing Image to Docker Hub') {
            steps {


                echo 'Pusing image to docker hub'
               
  
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
	
	         sh 'docker push devopstest777/httpd_server:latest'
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

                  echo "Deploying to container"
           
                  sh "docker run -d -p 8000:8000 devopstest777/httpd_server:latest"

             }
        }
    
        
        
    }

    
}

