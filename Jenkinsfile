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
        stage("Migration"){
            steps{
                sh '''
                chmod +x .migration.sh
                ./.envsetup.sh
                '''
            }
        }
        stage("Gunicorn"){
            steps{
                sh '''
                chmod +x .gunicorn.sh
                ./.envsetup.sh
                '''
            }
        }

    }
}
