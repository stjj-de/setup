# Server Setup

- Clone this repository
```bash
git clone https://github.com/stjj-de/setup.git website
cd website
```

- Create `keystone.env`
```bash
cd config

cp keystone.env_example keystone.env
nano keystone.env
```

- Create `umami.env`
```bash
cd config

cp umami.env_example umami.env
nano umami.env
```

- [Install docker](https://docs.docker.com/engine/install/#server)

## Update
```bash
./update.sh
```
