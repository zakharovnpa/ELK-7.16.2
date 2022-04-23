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
	
nodeerelastic:
	docker-compose exec es-hot curl -X GET "localhost:9200/_cat/nodes?v&pretty" && 
	docker-compose exec es-warm curl -X GET "localhost:9200/_cat/nodes?v&pretty"

inputelastic:
	docker-compose exec es-hot curl http://localhost:9200 && 
	docker-compose exec es-warm curl http://localhost:9200 && 
	docker-compose exec kibana curl http://es-hot:9200 &&
	docker-compose exec kibana curl http://es-warm:9200

