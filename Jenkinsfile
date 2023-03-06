pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "BRANCH_NAME ${BRANCH_NAME}"
                echo "CHANGE_TARGET ${CHANGE_TARGET}"
                echo "CHANGE_TITLE ${CHANGE_TITLE}"
                echo "CHANGE_URL ${CHANGE_URL}"
                echo "GIT_COMMIT ${GIT_COMMIT}"
                echo "GIT_BRANCH ${GIT_BRANCH}"
                echo "GIT_URL ${GIT_URL}"
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
