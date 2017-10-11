.DEFAULT=all

all:
	docker build -t neptune:5001/timw/jenkins-swarm .
	docker push neptune:5001/timw/jenkins-swarm