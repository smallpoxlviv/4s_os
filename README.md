# 4s_os

1. first of all you need to install "docker" and "docker-compose" (1.29.1)
2. to run the app just create script "start.sh" as in instruction and run "sh start.sh"
3. script "logs.sh" is watching for errors in java application
4. in grafana datasouce settings input "http://prometheus:9090/" 

## Creating scripts
### start.sh
```
cd ~/lab_5/4s_os
sudo docker-compose down
sudo rm -rf ~/lab_5
mkdir ~/lab_5
cd ~/lab_5
git clone https://github.com/smallpoxlviv/4s_os.git
cd 4s_os
sudo docker-compose up --build
```
### logs.sh
Replace unique ID of Docker container with the one you run Java app in
```
cd /var/lib/docker/containers/0efe6e3ccaaef99607a4a6d3acbde71f1ac6abbbd6081f56d0bfb7638b941398
sudo tail -f 0efe6e3ccaaef99607a4a6d3acbde71f1ac6abbbd6081f56d0bfb7638b941398-json.log | grep --line-buffered -i error
```
