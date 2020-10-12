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

- Login to the Github Docker Registry.
`~/.github_token` should be a file containing your GitHub token.
Replace `USERNAME` with your GitHub username.
```
cat ~/.github_token | docker login https://docker.pkg.github.com -u USERNAME --password-stdin
```

- Run `init.sh`
```shell script
./init.sh
```
