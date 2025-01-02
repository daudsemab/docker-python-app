pipeline {
    agent any
    
    environment {
    	SONAR_SCANNER_HOME = tool 'sonarscanner6214610';
	}
    stages {
        stage('sonarqube analysis') {
            steps {
                sh '''
                $SONAR_SCANNER_HOME/bin/sonar-scanner \
                  -Dsonar.projectKey=jenkins101 \
                  -Dsonar.sources=calculator.py \
                  -Dsonar.host.url=http://localhost:9000 \
                  -Dsonar.token=sqa_9714e66a2498124d865aae429e6276a2ac23f6bf
                  '''
            }
        }
        stage('build docker image') {
            steps {
                sh '''
                docker --version \
                echo "Docker Available" \

                docker build pycalculator . \
                echo "Build Docker Image"
                '''
            }
        }
    }
}

