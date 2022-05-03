pipeline {
  agent { label 'slave' }
    tools {
      maven 'maven-3.8.5'
             
    }
    stages {      
        stage('Build maven ') {
            steps {       
                    sh 'mvn clean package'
            }
        }
        
        stage('Build docker image') {
           steps {
               script {         
                 def customImage = docker.build('danalao/petclinic', ".")
                 docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                 customImage.push("${env.BUILD_NUMBER}")
                 }                     
           }
        }
	  }
    }
}
