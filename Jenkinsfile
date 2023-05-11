pipeline{
    agent any

    stages{
        stage("Set up python VIrtual ENV"){
            steps{
                sh '''
                chmod +x .envsetup.sh
                ./.envsetup.sh
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
