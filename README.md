## docker-talk

To switch to any step of the demo use the following command:
    `git checkout v1`

1. Simple Server - Health Check
2. Dockerfile
    - `docker build . -t server`
    - `docker run --init --rm -p 8000:8000 --name server server`
3. Add API
    - `docker build --build-arg SCRIPT=api.js . -t api`
    - `docker run --init --rm -p 8000:8000 --name api api`
4. Run Both - Docker Compose
    - `docker-compose up`
5. Add database
    - `docker-compose up -d`
    - `docker-compose logs -f api server`
6. Add multi-stage build
    - `curl -k http://localhost:8000/volumes` or in the browser