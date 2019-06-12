# log-collector

## Docker
Build:
```
$ docker build -t log-collector .
```
Run:
```
$ docker run -p 50000:50000 -it log-collector
```
Logstash would start listening on port 50000 for events