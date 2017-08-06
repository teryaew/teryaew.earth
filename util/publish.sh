#!/usr/bin/env sh

echo "Publishing site..."

git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"

git remote add upstream "https://$GH_TOKEN@github.com/teryaew/teryaew.earth.git"
git fetch -q upstream && git reset -q upstream/gh-pages

$TRAVIS_BUILD_DIR/sysconfcpus/bin/sysconfcpus -n 2 elm make ./src/index.elm

git add ./index.html
git commit -q -m "chore(*): update site by travis build $TRAVIS_BUILD_NUMBER"
git push -q upstream HEAD:gh-pages

echo "Site was successfully published to
https://teryaew.github.io/teryaew.earth/"
