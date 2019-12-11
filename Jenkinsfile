node {
  stage ('Checkout') {
    git 'https://github.com/Dmitry-Baranovsky/graduation_task'
  }
 
  stage ('Docker build') {
    docker.build('dmitrybaranovsky/hello_world')
  }
 
  stage ('Docker push') {
    docker.withRegistry('', 'dockerhub') {
      docker.image('dmitrybaranovsky/hello_world').push('latest')
    }
  }
  
  stage ('Deploy to CI') {
      sh "ansible-playbook -i ansible/ec2.py -u ubuntu ansible/playbook.yml"
  }
}

