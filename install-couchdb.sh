# delete container if it exists for org 1
docker container stop couchdb
docker container rm -f couchdb

# delete container if it exists for org 2
docker container stop couchdb2
docker container rm -f couchdb2

# Start two database containers
docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb -p 5984:5984 couchdb
docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb2 -p 5985:5984 couchdb

sleep 3s

# Verify if it works or not
curl localhost:5984
curl localhost:5985
