pipeline
{
	agent { label "master" }

    environment
    {
        DOCKER_REPO_URL = "${env.DOCKER_REPO}"
        DOCKER_USER = "${env.DOCKER_USER}"
        DOCKER_PASS = credentials('dockerhub-pass')
    }

	stages
	{
		stage( "Create Maven Cache" )
			{
				steps
				{
					sh " docker volume create maven-repo "
				}
			}

		stage( "Test" )
            {
                steps
                {
                    sh '''
                       ./jenkins/copy/copy.sh
                       #./jenkins/test/maven.sh mvn test
                       '''
                }
            }

		stage( "Build" )
			{
				steps
				{
					sh  '''
					    ./jenkins/copy/copy.sh
					    ./jenkins/build/maven.sh mvn -B -DskipTests clean package
					    ./jenkins/build/build.sh
					    '''

				}
			}
		stage( "Push" )
        	{
        	    steps
        		{
                    sh './jenkins/push/push.sh'
        		}
        	}
        stage( "Deploy" )
            {
                steps
           		{
                    sh 'echo Deploy'
               	}
           	}
	}
}