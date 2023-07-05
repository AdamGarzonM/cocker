echo "FIRST STEP"
docker volume create test;
docker run -v test -it --name testcontainer nginx bash -c "echo 'hola' > testfile.txt";
#docker exec -d testcontainer echo “hola” > testfile.txt;
#docker exec -d testcontainer exit;
echo "SECOND STEP"
docker run -it -v test --name testcontainer2 ubuntu bash -c "cat testfile.txt";
# docker exec -d testcontainer2 ls;
# docker exec -d testcontainer2 cat testfile.txt;
echo "THIRD STEP"
docker stop $ (docker ps -a -q);docker rm $ (docker ps -a -q);docker rmi $ (docker images -a -q);
#docker image prune -a;
