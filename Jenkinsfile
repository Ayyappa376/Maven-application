node 
{
    
      def mavenHome = tool name: "maven"
        stage('checkout'){
             git 'https://github.com/Ayyappa376/Maven-application.git'
        }
        stage('Build'){
            sh "$mavenHome/bin/mvn clean package"
        }
        stage('docker image'){
            sh"docker build -t ayyappa376/mavenweb ."
        }
        stage('docker push'){
            sh "docker login -u ayyappa376 -p ayyappa@76"
            sh "docker push ayyappa376/mavenweb"
        }
        stage('kubernetes deploy'){
		    withKubeConfig(credentialsId: 'kubeconfug') {
             sh "kubectl delete all --all"
             sh "kubectl apply -f mavendeployment.yml"
          }
	    	
		}
    
}
