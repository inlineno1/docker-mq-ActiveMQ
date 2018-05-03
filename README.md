# docker-mq-ActiveMQ

## build

```
sudo docker build -t activemq:5.15.3 .
```

## start

```
sudo docker run --name activemq -p=8161:8161 -p=61616:61616 -p=5672:5672 -p=61613:61613 -p=1883:1883 -p=61614:61614 -d -t activemq:5.15.3
```

```
sudo docker exec -it activemq /bin/bash
```

## stop

```
sudo docker stop activemq
```
