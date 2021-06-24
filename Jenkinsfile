
pipeline{
  agent any
  environment{
    NEW_VERSION = '1.0.1'
  }
  stages{
    stage("build"){    
      steps{
        echo 'building the app from jenkinds declarative script';
        echo "build new version is ${NEW_VERSION}"
      }
    }
    
    stage("test"){
//       when{
//         expression{
//           BRANCH_NAME == 'dev' || BRANCH_NAME == 'master'
//         }
//       }
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
