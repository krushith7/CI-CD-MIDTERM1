pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Java Program') {
            steps {
                bat 'javac Main.java'
            }
        }
        stage('Run Java Program') {
            steps {
                bat 'java Main'
            }
        }
    }
}
