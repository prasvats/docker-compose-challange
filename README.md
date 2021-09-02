# Docker Compose Challange
1. One percona mysql 
2. Load Balancer via Nginx 
3. Two application registered as upstream to loadbalancer nginx 


Running the application 

```bash
docker-compose up -d  --build
```

Load Balancer Config 

```bash
 events {
    worker_connections 1024;
}
http {
    upstream myapps {
        server app1;
        server app2;
    }

    server {
        listen 80;

        location / {
            proxy_pass http://myapps;
        }
    }
}
```

Visit http://localhost:8080/

![App 1](pics/1.png)

![App 2](pics/2.png)

