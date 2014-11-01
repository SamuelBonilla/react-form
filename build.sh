npm install

rm -r ./build

mkdir -p ./build/js
cp ./src/index.html ./build/index.html

./node_modules/.bin/browserify ./src/coffee/app.coffee -t coffee-reactify --extension=".coffee" -o ./build/js/app.js

cd ./build
python -m SimpleHTTPServer

