pipeline {
    agent any
    
    environment {
        BRANCH_NAME = env.JOB_NAME.split('-')[0] ?: 'main'
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    echo "Checking out branch: ${BRANCH_NAME}"
                    checkout([$class: 'GitSCM', branches: [[name: "*/${BRANCH_NAME}"]], userRemoteConfigs: [[url: 'https://github.com/iamprakash89/opstree.git']]])
                }
            }
        }
        
        stage('Execute Calculator') {
            steps {
                script {
                    sh './calculator.sh' // Modify the path as needed
                }
            }
        }
    }
}
