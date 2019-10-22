pipeline{
   agent {
    label 'dev'
  }

  when {
    allOf {
      branch 'dev'
    }
    beforeAgent true
  }

  environment {
    CI = "True"
  }
}
        stage('development') {
              
  stages {
    // One or more stages need to be included within the stages block.
     tools {  Docker
}
    stage('Buid') {
  steps {
    // One or more steps need to be included within the steps block.
    powershell label: '', script: '''sudo docker  rm - f $(sudo docker ps -a ps)
    sudo docker Build  \\home\\ubuntu\\agent\\workspace\\Build  -t  dev 
    sudo docker run -it -d -p 81:80 dev'''
  }
}
stage('test') {
  steps {
    // One or more steps need to be included within the steps block.
    
  }
}

  }

  
}
