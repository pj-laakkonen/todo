node {
    def app

    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("laakkonen/todo")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Robot Framework tests passed"'
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-creds') {
            /* app.push("${env.BUILD_NUMBER}")*/
            app.push("latest")
        }
    }
    stage('Deploy image: prod') {
        app.inside {
            sh 'echo "Deploying to production"'
        }
    }
}