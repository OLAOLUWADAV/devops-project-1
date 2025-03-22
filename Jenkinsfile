pipeline {
    agent any

    parameters {
        booleanParam(name: 'PLAN_TERRAFORM', defaultValue: false, description: 'Check to plan Terraform changes')
        booleanParam(name: 'APPLY_TERRAFORM', defaultValue: false, description: 'Check to apply Terraform changes')
        booleanParam(name: 'DESTROY_TERRAFORM', defaultValue: false, description: 'Check to destroy Terraform infrastructure')
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clean workspace before cloning
                deleteDir()
                // Clone the Git repository from GitHub
                git branch: 'main', url: 'https://github.com/OLAOLUWADAV/devops-project-1.git'
                sh 'ls -lart'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-crendentails-David']]) {
                    // Change directory to "infra" if your Terraform code is located there.
                    dir('infra') {
                        sh 'echo "=================Terraform Init=================="'
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            when {
                expression { return params.PLAN_TERRAFORM }
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-crendentails-David']]) {
                    dir('infra') {
                        sh 'echo "=================Terraform Plan=================="'
                        sh 'terraform plan'
                    }
                }
            }
        }

        stage('Terraform Apply') {
            when {
                expression { return params.APPLY_TERRAFORM }
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-crendentails-David']]) {
                    dir('infra') {
                        sh 'echo "=================Terraform Apply=================="'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }

        stage('Terraform Destroy') {
            when {
                expression { return params.DESTROY_TERRAFORM }
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'aws-crendentails-David']]) {
                    dir('infra') {
                        sh 'echo "=================Terraform Destroy=================="'
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
