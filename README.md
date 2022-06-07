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

- Create `keystone.env`
```bash
cd config

cp keystone.env_example keystone.env
nano keystone.env
```

- [Install docker](https://docs.docker.com/engine/install/#server)

## Update
```bash
./update.sh
```
