#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# create .nojekyll to bypass Jekyll processing
touch .nojekyll

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mashaalj/stemverse-app.git main:gh-pages

cd - 