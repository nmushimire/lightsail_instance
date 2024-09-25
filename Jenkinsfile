pipeline{
    agent any
    stages {
        stage ( "terraform init") {
            steps {
                sh "terraform init" 
            }
        }
         stage ( "terraform validate") {
            steps {
                sh "terraform validate" 
            }
        } 
         stage ( "terraform format") {
            steps {
                sh "terraform fmt" 
            }
        }
         stage ( "terraform plan") {
            steps {
                sh "terraform plan" 
            }
        }
        
    }
    
}