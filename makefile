all:
	docker stop javatar-tomcat
	docker rm javatar-tomcat
	docker build -t javatar-backend .
	docker run -d -p 8080:8080 -p 8443:8443 --name javatar-tomcat javatar-backend

start:
	docker start javatar-tomcat

stop: 
	docker stop javatar-tomcat

build:
	docker build -t javatar-backend .
	docker run -d -p 8080:8080 -p 8443:8443 --name javatar-tomcat javatar-backend