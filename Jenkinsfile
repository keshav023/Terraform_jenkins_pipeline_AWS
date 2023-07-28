pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/keshav023/Terraform_jenkins_pipeline_AWS.git']]])            

          }
        }
        
        stage ("terraform init") {
            steps {
                sh ('terraform init') 
            }
        }

         stage ("terraform Plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}