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

    
 
           stage('Deploy') {
            steps {
                echo 'Deploying App in Dev Environment..!'

                  echo "Deploying to container"
                  sh 'docker rm -f apachewebapp'

                  sh "docker run -d -p 80:80 --name apachewebapp devopstest777/httpd_server:latest"

             }
        }
    
        
        
    }

    
}

