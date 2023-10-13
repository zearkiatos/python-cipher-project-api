activate:
	source run.sh; activate

install:
	source run.sh; install

run:
	source run.sh; run $(port)

docker-build:
	docker build -t python-cipher-project-api .
	docker images

docker-run:
	docker run -d -p 5000:5000 --name=python-cipher-project-api python-cipher-project-api

docker-down:
	docker stop python-cipher-project-api
	sleep 2
	docker rm python-cipher-project-api