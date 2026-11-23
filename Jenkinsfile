pipeline {
    agent any

    stages {
        stage('Pobranie kodu (Checkout)') {
            steps {
                git branch: 'main', url: 'https://github.com/PeterPorzuczek/TimeRiddle.git'
            }
        }
        
        stage('Kolejne kroki') {
            steps {
                echo 'Kod został pomyślnie pobrany z repozytorium TimeRiddle.'
            }
        }
    }
}
