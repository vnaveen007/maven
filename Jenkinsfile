pipeline
{
    agent any
    stages
    {
        stage('ContinuousDownload')
        {
            steps
            {
                git 'https://github.com/Abhay93280/maven.git'
            }
        }
        stage('ContinuousBuild')
        {
            steps
            {
                sh 'mvn package'
            }
        }
        stage('ContinuousDeployment')
        {
            steps
            {
               deploy adapters: [tomcat9(credentialsId: 'fac6ae1f-8c46-4265-a57f-f2bcf477cce3', path: '', url: 'http://65.2.37.164:9090')], contextPath: 'test1', war: '**/*.war'
            }
        }
        stage('ContinuousTesting')
        {
            steps
            {
               git 'https://github.com/Abhay93280/maven.git'
               sh 'java -jar /home/ubuntu/.jenkins/workspace/DeclarativePipeline1/testing.jar'
            }
        }
       
    }
    
    post
    {
        success
        {
            input message: 'Need approval from the DM!', submitter: 'srinivas'
               deploy adapters: [tomcat9(credentialsId: 'fac6ae1f-8c46-4265-a57f-f2bcf477cce3', path: '', url: 'http://13.203.97.202:9090')], contextPath: 'prod1', war: '**/*.war'
        }
        failure
        {
            mail bcc: '', body: 'Continuous Integration has failed', cc: '', from: '', replyTo: '', subject: 'CI Failed', to: 'abhaygajera11@gmail.com'
        }
       
    }
    
    
    
    
    
    
}
