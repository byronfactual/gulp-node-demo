echo "Starting data validation demo server"
echo "------------------------------------"

touch ~/.ssh/id_rsa
echo -e "$SSH_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

echo "Cloning git repo"
git clone $GIT_REPO repo
cd repo
npm install

echo "Running gulp"
cd repo
./node_modules/.bin/gulp build

echo "Starting web server"
npm install -g http-server
http-server dist
