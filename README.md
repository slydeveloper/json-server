JSON Server
========================
Yet another implementation of containerized [https://github.com/typicode/json-server](https://github.com/typicode/json-server)

Info
----
- Name: `slydeveloper/json-server`
- Version: `latest`,`1.0`
- [Docker Hub](https://hub.docker.com/r/slydeveloper/json-server/)

Details
--------
- Image based on `node:16-alpine`
- Pre-installed test DB:
  - Location: `/db/db.json`
  - For override via mount volume
- Exposed test API: `http://localhost:8000/test`  

Simple Usage
------------
```docker run -p 8000:8000 --name json-server slydeveloper/json-server```

Docker Compose Usage
--------------------
- see `example`