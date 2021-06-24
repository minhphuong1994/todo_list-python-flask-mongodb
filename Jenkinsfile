CODE_CHANGES = getGitChanges()
pipeline{
  agent any
  stages{
    stage("build"){
      when{
        expression{
          BRANCH_NAME == 'main' && CODE_CHANGES == true
        }
      }
      steps{
        echo 'building the app from jenkinds declarative script';
      }
    }
    
    stage("test"){
      when{
        expression{
          BRANCH_NAME == 'dev' || BRANCH_NAME == 'master'
        }
      }
      steps{
        echo 'testing the app from jenkinds declarative script';
      }
    }
    
    stage("deploy"){
      steps{
        echo 'deploying the app from jenkinds declarative script';
      }
    }
  }

}
