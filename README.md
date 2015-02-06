irccloud-cli-docker
--

# Usage with config file

1. Modify config.json
2. `docker build --tag="local/irccloud-cli:latest" ./ `
3. `docker run -d --name="irccloud-cli" local/irccloud-cli:latest`


# Usage with arguments

1. `docker build --tag="local/irccloud-cli:latest" ./ `
2. `docker run -d --name="irccloud-cli" local/irccloud-cli:latest ic -e <email> -p <password>`


# Run more than 1 user

If you want to run more than 1 IRCCloud user in a container, you can:

```bash
$ docker run -d --name="irccloud-cli" local/irccloud-cli:latest ic -e <email> -p <password>
$ docker exec -d irccloud-cli ic -e <email> -p <password>
```


# Change config file after building image

If your are already built images, but want to change config for container, you can use volume instead of rebuilding image.

```bash
$ docker build --tag="local/irccloud-cli:latest" ./
$ docker run -d --name="irccloud-cli" -v <NEW_CONFIG_FILE_PATH>:/app/config.json local/irccloud-cli:latest
```
