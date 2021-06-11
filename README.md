

docker build . -t bergpb/docker-ansible:VERSION
docker build . -t bergpb/docker-ansible:latest

docker push bergpb/docker-ansible:VERSION
docker push bergpb/docker-ansible:latest
