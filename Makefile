## Makefile for Docker-compose services ELK

count:
	cat /proc/sys/vm/max_map_count

addcount:
	sysctl -w vm.max_map_count=262144

up:
	docker-compose up -d


ps:
	docker-compose ps


down:
	docker-compose down



images:
	docker images
