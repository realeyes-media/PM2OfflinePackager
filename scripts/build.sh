set -ex
USERNAME=ironsalsa
IMAGE=PM2OfflinePackager
docker build -t $USERNAME/$IMAGE:latest .
