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
                echo 'Building Docker Image..!'
		 sh "docker build -t devopstest777/httpd_server:latest ."
            }
        }



	  stage('Pushing Image to Docker Hub') {
            steps {


                echo 'Pusing image to docker hub'
               
  
                  sh "echo $DOCKER_HUB_PWD | docker login -u devopstest777 --password-stdin"

	
	         sh "docker push devopstest777/httpd_server:latest"
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

