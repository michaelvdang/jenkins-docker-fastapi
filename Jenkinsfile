pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''
          docker ps
          docker ps -agent
          docker images
          docker network create fa-net
          docker build -t fa-image .
          docker run -d --name fa-cont --network fa-net fa-image
          docker build -t fa-tester-image ./test
          docker run -d --name fa-tester --network fa-net fa-tester-image
        '''

      
      }
    }
  }
  post {
    always {
      sh'''
      docker rm -f fa-cont
      docker rmi -f fa-image
      docker rm -f fa-tester
      docker rmi -f fa-tester-image
      docker network rm fa-net
      '''
    }
  }
}