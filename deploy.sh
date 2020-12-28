rm -rf dist  &&
yarn build &&
cd dist   &&
git init   &&
git add .   &&
git commit -m "update"   &&
git branch -M master   &&
git remote add origin git@github.com:Mr-XuL/gulu-ui-website-3.git
git push -f -u origin master   &&
cd ..
echo https://mr-xul.github.io/gulu-ui-website-3/index.html