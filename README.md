# C++ Via Docker

Just clone the repo then

Code in the app directorty

start the container with these commands 
```
docker build -t ubuntu-gdb .

docker run --name ubuntu-gdb -v docker-scripts-volume:/app --security-opt seccomp=unconfined -tid ubuntu-gdb-slim
```

Now you can run the C++ code easily like this (you can edit the code too and run it any time)

```
# compile
docker exec -it ubuntu-gdb g++ /app/main.cpp /app/message.cpp -o /app/hello

# exec
docker exec -it ubuntu-gdb/app/hello
```
