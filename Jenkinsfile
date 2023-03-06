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
                    string(name: 'GYROID_ARCH', value: 'x86'),
                    string(name: 'GYROID_MACHINE', value: 'genericx86-64'),
                    string(name: 'CML_BRANCH_NAME', value: 'kirkstone'),
                    string(name: 'PR_BRANCHES', value: 'meta-trustx=PR-177,meta-trustx-intel=PR-15,gyroidos_build=PR-97')
                ]
            }
        }
    }
}
