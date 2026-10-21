pipeline {
    agent any

    environment {
        PYTHON_VERSION = '3.11'
        VENV_DIR = '.venv'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code'
                checkout scm
            }
        }

        stage('Prepare Python Environment') {
            steps {
                echo 'Creating virtual environment and installing dependencies'
                sh '''
                    python3 --version
                    python3 -m venv ${VENV_DIR}
                    . ${VENV_DIR}/bin/activate
                    python -m pip install --upgrade pip
                    pip install -r requirements.txt
                    python -m Browser.install
                '''
            }
        }

        stage('Start Banking Demo') {
            steps {
                echo 'Starting the local banking demo app'
                sh '''
                    . ${VENV_DIR}/bin/activate
                    python start_banking_demo.py > demo.log 2>&1 &
                    sleep 5
                '''
            }
        }

        stage('Run Robot Tests') {
            steps {
                echo 'Executing the Robot Framework test suite'
                sh '''
                    . ${VENV_DIR}/bin/activate
                    robot tests
                '''
            }
        }
    }

    post {
        always {
            echo 'Publishing test results'
            archiveArtifacts artifacts: 'output.xml, log.html, report.html, demo.log', allowEmptyArchive: true
            junit 'output.xml'
        }

        failure {
            echo 'The pipeline failed. Check test output and logs.'
        }
    }
}
