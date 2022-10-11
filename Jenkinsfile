pipeline {
    agent any

    stages {
        stage ('build') {

            steps {
                sh '''
                ./jenkins/build/mvn.sh -B -DskipTests mvn clean package
                ./jenkins/build/build.sh
                '''
            }
            post {
                success {
                    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }


        stage ('test') {

            steps {
                sh '''
                    ./jenkins/test/mvn.sh mvn test
                '''
            }

            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
            }
        }

        

        stage ('push') {
            steps {
                sh '''
                    ./jenkins/push/push.sh
                '''
            }
        }

        stage ('deploy') {
            steps {
                sh '''
                    ./jenkins/deploy/deploy.sh
                '''
            }
        }
    }
}
