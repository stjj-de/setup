# Server Setup

- Clone this repository
```shell script
git clone https://github.com/stjj-de/setup.git website
cd website
```

- Create `mariadb.env`, `backend.env` and `ackee.env` from their corresponding
example files (`mariadb.env_example`, ...) and provide values
```shell script
cp mariadb.env_example mariadb.env
cp backend.env_example backend.env
cp ackee.env_example ackee.env
```

- Run `init.sh`
```shell script
./init.sh
```
