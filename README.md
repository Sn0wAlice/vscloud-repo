# vscloud-repo

![](./.github/banner.png)

Work on the cloud with VSCode. This repository contains a collection of tools and scripts to help you work on the cloud with VSCode.


`docker-compose.yml` example:
```yml
services:
  code-server:
    image: ghcr.io/sn0walice/vscloud-repo-default:latest
    container_name: code-server
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - DEFAULT_WORKSPACE=/config/workspace
    volumes:
      - ./config:/config
    ports:
      - 3000:8443
    restart: unless-stopped
```