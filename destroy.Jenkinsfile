pipeline {
agent any
  stages {
           stage('Terraform Initialisization') {
            steps {
                sh "cp env-${ENV}/Terrafile . ; terrafile"
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
                }
            }

            stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
                }
            }

            stage('Terraform Apply') {
            steps {
                sh "terraform destroy -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
                }
            }
         }
     }