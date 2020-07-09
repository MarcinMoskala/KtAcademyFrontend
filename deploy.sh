#!/usr/bin/env sh

# abort on errors
set -e

# build
echo Linting..
npm run lint

echo Building. this may take a minute...
npm run build

echo Deploying..
# navigate into the build output directory
cd dist

git init
git remote add origin git@github.com:MarcinMoskala/KtAcademyFrontendDeploy.git || true
git add -A
git commit -m 'new deploy'
git push -u origin master -f

cd -
