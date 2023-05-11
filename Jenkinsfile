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

    }
}
