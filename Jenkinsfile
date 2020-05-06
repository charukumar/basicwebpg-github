node {
     def app
     

     stage('clone repo'){
     
          checkout scm
     }

     stage('Build app'){
          app = docker.build("charukumar/devops-test:${env.BUILD_ID}")
     }

     stage('Publish image'){
     withCredentials([usernamePassword( credentialsId: 'dockerHub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {


     docker.withRegistry('', 'dockerHub') {
         sh "docker login -u ${USERNAME} -p ${PASSWORD}"
         sh "docker push charukumar/devops-test:${env.BUILD_ID}"
     }
     echo "Trying to push docker build to dockerhub"   
        
   }
   }
}
