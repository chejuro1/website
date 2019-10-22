pipeline {
    agent {
    label 'dev'
  }
    stages {
        stage('Build') {
            steps {
               powershell label: '', script: '''sudo docker  rm - f $(sudo docker ps -a ps)
               sudo docker Build  \\home\\ubuntu\\agent\\workspace\\Build  -t  dev 
               sudo docker run -it -d -p 81:80 dev'''
                echo 'Building'
            }
        }
        stage('test') {
            when {
                branch 'master'
            }
            steps {
               sh label: '', script: 'sudo su  -c  "java -jar \\home\\ubuntu\\agent\\workspace\\website.jar -s \\bin\\sh ubuntu'
                echo 'Deploying'
            }
        }
    }
}
