# Server Setup

- Clone this repository
```bash
git clone https://github.com/stjj-de/setup.git website
cd website
```

- Login to the GitHub Container Registry.
  `~/.github_token` should be a file containing a GitHub access token with the `read:packages` scope.
  Replace `USERNAME` with your GitHub username.
```
cat ~/.github_token | docker login ghcr.io -u USERNAME --password-stdin
```

- Create `strapi.env`
```bash
cd config

cp strapi.env_example strapi.env
nano strapi.env
```

- Run `init.sh` (Installs docker + docker-compose and starts containers)
```bash
cd ..
./init.sh
```

## Updating containers

```bash
cd ..
./update_docker.sh
```
