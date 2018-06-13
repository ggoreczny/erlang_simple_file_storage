# S3 Simple Implementation in Erlang


Training project in Erlang, it is simple distributed file server. Endpoints are exposed as REST api:
http://localhost:8080/file

**Accepted methods**: GET, PUT, DELETE.

Example of required json format might be found under **json_example** directory

## Helper commands

### Compile
```
$ make compile
```
### Development
```
$ make dev
```

## Testing

### Automated tests:

1. please start rest node and at least one worker
```
$ make dev
```

2. and run tests in other terminal
```
$ make test
```

### Pre-set scenario with rest server and three worker nodes.

Please execute each in different terminal:
```
$ make rest
$ make node1
$ make node2
$ make node3
```

### Curl testing

```
curl -X PUT -H  "Content-Type: application/json" --data @json_example/put.json http://localhost:8080/file
```

```
curl -X GET -H  "Content-Type: application/json" http://localhost:8080/file?filename=foo.txt
```

```
$ curl -X PUT -H  "Content-Type: application/json" --data @json_example/delete.json 
```
