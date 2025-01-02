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
        stage('build & push docker image') {
            steps {
                sh 'docker --version'
                sh 'echo "Docker Available"'
                sh 'docker build -t dawoodsemab786/pycalculator:lts .'
                sh 'echo "Building Docker Image"'
                withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
                sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
                sh 'docker push dawoodsemab786/pycalculator:lts'
                }
            }
        }
    }
}

