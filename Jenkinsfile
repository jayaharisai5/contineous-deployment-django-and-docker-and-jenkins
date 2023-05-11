pipeline{
    agent any

    stages{
        stage("Checkout"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jayaharisai5/contineous-deployment-django-and-docker-and-jenkins.git']]])
            }
        }
        stage("build"){
            steps{
                git branch: 'master', url: 'https://github.com/jayaharisai5/contineous-deployment-django-and-docker-and-jenkins.git'
            }
        }
        stage("Set up python VIrtual ENV"){
            steps{
                sh '''
                chmod +x envsetup.sh
                ./envsetup.sh
                '''
            }
        }
        stage("Setup Gunicorn Setup"){
            steps{
                sh '''
                chmod +x gunicorn.sh
                ./gunicorn.sh
                '''
            }
        }
        stage("Step NGINX"){
            steps{
                steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
            }
        }
    }
}