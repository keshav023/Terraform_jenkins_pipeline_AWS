pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/keshav023/Terraform_jenkins_pipeline_AWS.git']]])            

          }
        }
        
        stage ("Terraform Init") {
            steps {
                sh ('terraform init') 
            }
        }

         stage ("Terraform Plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("Terraform Apply") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}