pipeline {
    agent any
    stages {
        stage('build') {
            steps {
		    sh "set"
            }
        }
        stage('build GyroidOS') {
            steps {
                build job: "../gyroidos", wait: true, parameters: [
                    string(name: "PR_BRANCHES", value: "meta-trustx=${BRANCH_NAME}")
                ]
            }
        }
    }
}
