touch ~/.ssh/id_rsa
echo -e "$SSH_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

git clone $GIT_REPO repo
cd repo
ls
npm install
./node_modules/.bin/gulp build

npm install -g http-server
ls
ls dist
cd dist
http-server -p 8080
