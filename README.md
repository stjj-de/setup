# Server Setup

- Clone this repository
```bash
git clone https://github.com/stjj-de/setup.git website
cd website
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
