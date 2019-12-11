node {
  stage ('Checkout') {
    git 'https://github.com/Dmitry-Baranovsky/graduation_task'
  }
 
  stage ('Docker build') {
    docker.build('hello_world')
  }
 
  stage ('Docker push') {
    docker.withRegistry('https://029885178502.dkr.ecr.us-east-1.amazonaws.com/hello_world', 'ecr:us-east-1:ecr_cred') {
      docker.image('hello_world').push('latest')
    }  
  }
}
