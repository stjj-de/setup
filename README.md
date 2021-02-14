# Server Setup

- Clone this repository
```shell script
git clone https://github.com/stjj-de/setup.git website
cd website
```

- Create `.env` files in `umami` and `website` from their corresponding
examples (`.env_example`) and provide values

- Login to the Github Docker Registry.
`~/.github_token` should be a file containing your GitHub token.
Replace `USERNAME` with your GitHub username.
```sh
cat ~/.github_token | docker login https://docker.pkg.github.com -u USERNAME --password-stdin
```

- Run `init.sh`
```shell script
./init.sh
```
