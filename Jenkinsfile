pipeline {  
    environment {
    registry = "hsj89/install"
    registryCredential = 'dockerhub'
    }  
  
  agent any  
  
  stages {
    stage('Cloning Git') {
      steps {
         git branch: 'main',
             url: 'https://github.com/HSJ-89/DockerJenkins.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
	stage('Deploy echo') {
		steps {
			echo "Hello...!!!!"
			}
	}
	stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
	}
  }
}