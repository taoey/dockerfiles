path=$(pwd)
docker run \
	--name mysql-test \
	-p 3399:3306 \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-v $path/conf:/etc/mysql/conf.d \
	-v $path/data:/var/lib/mysql \
	-d mysql:5.7