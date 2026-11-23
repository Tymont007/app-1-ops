pipeline {
    agent any
    parameters {
        string(name: 'GREETING', defaultValue: 'Hello', description: 'The greeting message')
        choice(name: 'BRANCH', choices: ['master', 'dev'], description: 'Branch to build')
        booleanParam(name: 'DEPLOY', defaultValue: true, description: 'Kontrola wykonania etapu wdrożenia')
    }
    stages {
        stage('Example') {
            steps {
                echo "${params.GREETING}, we are building the ${params.BRANCH} branch."
            }
        }
        stage('Deploy') {
            when {
                expression { params.DEPLOY == true }
            }
            steps {
                echo "Wykonywanie wdrożenia (Deploy)..."
                // Tutaj możesz dodać właściwe kroki wdrożeniowe (np. skrypty, wdrożenie na serwer)
            }
        }
    }
}
