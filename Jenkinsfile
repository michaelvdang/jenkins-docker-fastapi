pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'ls -al'
        sh '''
          docker ps
          docker ps -a
          docker images
          docker network create fa-net
          docker build -t fa-image .
          docker run -d --name fa-cont --network fa-net fa-image



          docker build -t wv-image ./app/services/WordValidation
          docker run -d --name wv-cont -p 9200:9200 --network fa-net wv-image



          docker build -t fa-tester-image ./test-base
          docker run -d --name fa-tester --network fa-net fa-tester-image
        '''
        sh 'docker logs fa-tester'
        sh 'docker logs fa-cont'
        sh 'docker logs wv-cont'
      
      }
    }
  }
  post {
    always {
      sh'''
      docker ps
      docker ps -a
      docker rm -f fa-cont
      docker rmi -f fa-image
      docker rm -f fa-tester
      docker rmi -f fa-tester-image
      docker rm -f wv-cont
      docker rmi -f wv-image
      docker network rm fa-net
      '''
    }
  }
}