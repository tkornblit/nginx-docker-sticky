
CID=$(docker ps -q)
PID=$(docker inspect --format {{.State.Pid}} $CID)
sudo nsenter --target $PID --mount --uts --ipc --net --pid

