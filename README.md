# jenkins-docker-fastapi

This project shows inconsistent behavior when FastAPI is running in Docker containers inside a Jenkins pipeline

The test container "failed to connect to wv-cont: couldn't connect to server" when wv-cont internal port is not on port 80

The test.sh script is also inconsistent when it comes to logging the curl results for the fa-cont



What works 