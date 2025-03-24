pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                echo 'Building...'
            }
        }
        stage('Test') { 
            steps {
                echo 'Testing...'
                // to run methods in parallel 
                parallel (
                  unitTest: {
                    echo 'Running unit tests...'
                  },
                  integrationTest: {
                    echo 'Running integration tests...'
                  }
                )
            }
        }
        stage('Deploy') { 
            steps {
                echo 'Deploying...'
            }
        }
    }
}
