/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'node --version'
                sh 'ls -la'
            }
        }
    }
    post {
        always {
            echo "Success pipeline by me"
        }
    }
}