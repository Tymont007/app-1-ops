pipeline {
    agent any

    stages {
        stage('Pobranie kodu (Checkout)') {
            steps {
                // Pobranie kodu źródłowego z repozytorium GitHub
                git branch: 'main', url: 'https://github.com/PeterPorzuczek/TimeRiddle.git'
            }
        }
        
        stage('Kolejne kroki') {
            steps {
                echo 'Kod został pomyślnie pobrany z repozytorium TimeRiddle.'
                // Tutaj możesz dodać np. budowanie projektu, testy itp.
            }
        }
    }
}
