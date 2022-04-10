pipeline {
    agent any

    stages {
      stage('fetch_latest_code_from_github') {
        steps {
          git credentialsId: 'github', url: 'https://github.com/SeethalakshmiB/terraform-s3-module-jenkins.git'
        }
      }

      stage('Deploy_AWS') {
        steps {
            script {
            withCredentials([[
                        $class: 'AmazonWebServicesCredentialsBinding', 
                        accessKeyVariable: 'AWS_ACCESS_KEY_ID', 
                        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY',
                        credentialsId: 'access-key'
                    ]]) {
                            sh 'terraform init'
                            sh 'terraform plan'
                            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
                            sh 'terraform apply -auto-approve'
                    }
            }
        }      
      }
    } 
  }