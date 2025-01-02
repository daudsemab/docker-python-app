pipeline {
    agent any
    
    environment {
    	SONAR_SCANNER_HOME = tool 'sonarqube-scanner-621';
	}
    stages {
        stage('sonarqube analysis') {
            steps {
                sh '''
                $SONAR_SCANNER_HOME/bin/sonar-scanner \
                  -Dsonar.projectKey=DockerizeCalculator \
                  -Dsonar.sources=calculator.py \
                  -Dsonar.host.url=http://sonarqube:9000 \
                  -Dsonar.token=sqp_98d81e013d60d5565a97546b86c0546be65c77d0
                  '''
            }
        }
        stage('build docker image') {
            steps {
                sh '''
                docker --version \
                echo "Docker Available" \
                '''
            }
        }
    }
}

