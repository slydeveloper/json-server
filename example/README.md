json-server usage
========================

Details
--------
- Image based on `node:16-alpine`
- Pre-installed test DB:
  - Location: `/db/db.json`
  - For override via mount volume
- Exposed test API: `http://localhost:8000/test`
- Tested on: `Docker version 20.10.6, build 370c289`

Docker Compose Usage
--------------------
```
version: "3.9"

services:
  docker-json-server:
    ports:
      - "8000:8000"
    container_name: docker-json-server
    image: slydeveloper/json-server
    volumes:
      - "./db:/db"
```