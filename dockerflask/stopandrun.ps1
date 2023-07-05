$container = "test";
$image = "test";
docker stop $container;docker rmi $image;docker build -t $container .; docker run -p 80:80 --name $image $container