curl -SL https://github.com/docker/compose/releases/download/v2.40.3/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose version

mkdir -p ~/.docker/cli-plugins && \
curl -SL https://github.com/docker/buildx/releases/download/v0.17.0/buildx-v0.17.0.linux-$(uname -m | sed 's/x86_64/amd64/;s/aarch64/arm64/') \
-o ~/.docker/cli-plugins/docker-buildx && \
chmod +x ~/.docker/cli-plugins/docker-buildx
