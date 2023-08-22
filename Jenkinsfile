pipeline {
    agent any
    
    environment {
        JOB_BRANCH = env.BRANCH_NAME ?: "main" // Use 'main' as default branch
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    echo "Checking out branch: ${JOB_BRANCH}"
                    checkout([$class: 'GitSCM', branches: [[name: "*/${JOB_BRANCH}"]], userRemoteConfigs: [[url: 'https://github.com/iamprakash89/opstree.git']]])
                }
            }
        }
        
        stage('Get Branches') {
            steps {
                script {
                    def branches = sh(script: 'git ls-remote --heads origin | cut -f2 | sed "s#refs/heads/##"', returnStdout: true).trim().split('\n')
                    echo "List of branches:"
                    branches.each { branch ->
                        echo "- $branch"
                    }
                }
            }
        }
    }
}
