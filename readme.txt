docker rmi -f grunt
dans ce dossier : 
docker build -t grunt .
docker run --name grunt -ti -v ~/dev/master/:/claude grunt


et ensuite : 
docker start grunt
docker attach grunt
