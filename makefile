#delete any nodejwt containers
docker-remove-all:
	docker rm -fv nodedockerapp &> /dev/null

#build and start the nodejwt containers
docker-build-start:
	docker-compose  up --build -d

#stop and remove nodejwt containers
docker-stop:
	docker-compose down
	docker ps -a

#start nodejwt without build
docker-start:
	docker-compose up -d

#just build image
docker-build:
	docker-compose build