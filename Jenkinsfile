node('built-in'){
    stage('continuousDownlaod') {
     git 'https://github.com/gopiseshu/maven.git'
}
stage('continuousBuild') {
    sh '''mvn package
    '''
}
stage('continuousDeployment'){
    sh ' scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.11.73:/opt/tomcat/webapps/qqaapp.war'
}
stage('continuousTesting'){
    git 'https://github.com/gopiseshu/FunctionalTesting.git'
    sh '''java -jar /var/lib/jenkins/workspace/Testing/testing.jar
    '''
}
stage('continuousDelivery'){
     sh 'scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.11.192:/opt/tomcat/webapps/pprodapp.war'
}
    
}
