node('built-in'){
    stage('continuousDownlaod_loan') {
     git 'https://github.com/gopiseshu/maven.git'
}
stage('continuousBuild_loan') {
    sh '''mvn package
    '''
}
stage('continuousDeployment_loan'){
    sh ' scp /var/lib/jenkins/workspace/scriptedpipeline/webapp/target/webapp.war ubuntu@172.31.11.73:/opt/tomcat/webapps/qqaapp.war'
}

}
