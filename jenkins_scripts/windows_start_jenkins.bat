@REM Replace jnlpUrl, secret and working_directory with the values from node settings in Jenkins.
java -jar agent.jar -jnlpUrl <jnlpUrl> -secret <secret> -workDir "<working_directory>"