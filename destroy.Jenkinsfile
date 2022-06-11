pipeline {
agent any
    parameters
         { choice(name: 'ENV', choices: ['dev', 'prod'], description: 'ENV')
            string(name: 'APP_VERSION', defaultValue: '', description: 'Choose App Version To Deploy : Ignore this VPC and DB')
          }
 stages {
           stage('Terraform Initialisation') {
            steps {
                sh "cp env-dev/Terrafile . ; terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars -reconfigure"
                }
            }
            stage('Terraform Apply') {
            steps {
                sh "terraform destroy -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
                }
            }
         }
     }