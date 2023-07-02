pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
                script {
                    deploy {
                        tool = 'terraform'
                        var1 = 'value1'
                        var2 = 'value2'
                    }
                }
            }
        }
    }
}