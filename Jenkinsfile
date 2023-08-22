pipeline {
    agent any
    
    stages {
        stage('Setup') {
            steps {
                script {
                    def branchName = env.JOB_NAME.split('-')[0] ?: 'main'
                    echo "Using branch name: ${branchName}"
                    
                    env.BRANCH_NAME = branchName
                }
            }
        }
        
        stage('Checkout') {
            steps {
                script {
                    echo "Checking out branch: ${env.BRANCH_NAME}"
                    checkout([$class: 'GitSCM', branches: [[name: "*/${env.BRANCH_NAME}"]], userRemoteConfigs: [[url: 'https://github.com/iamprakash89/opstree.git']]])
                }
            }
        }
        
        stage('Execute Calculator') {
            steps {
                script {
                    chmod +x calculator.sh
                    sh './calculator.sh' // Modify the path as needed
                }
            }
        }
    }
}
