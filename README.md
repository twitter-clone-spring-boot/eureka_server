#platform flag specifies for which platforms Docker image will be built. Docker support 10 platforms, but probably you shouldn use only linux/amd64 (Intel) and linux/arm64 (M1):

**Build docker image:**
docker build --tag=eureka_server_arm64 --platform linux/arm64 .

** Run built image: **
docker run -p 8761:8080 eureka_server_arm64

** Push the image