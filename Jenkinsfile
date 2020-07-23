node {
    // Git checkout
    stage('Git checkout'){
        git credentialsId: 'GithubID', url: 'https://github.com/Manikanta-Majeti-Devops/war-test.git'
    }
    // Build & test 
    stage('code build & test'){
        //use the jenkined provided maven 
        def mavenHome = tool name: 'maven-runtime', type: 'maven'
        def mavenCMD = "${mavenHome}/bin/mvn"
        sh "${mavenCMD} clean package"
    }
    // Deploy to Docker provided tomcat container
    stage('code deploy to docker provided tomcat server'){
        sh 'sudo docker build -t mmk4mmk/war-test:a.0'
	sh 'sudo docker run -p 9999:8080 -d mmk4mmk/war-test:a.0'
    }
    
}
