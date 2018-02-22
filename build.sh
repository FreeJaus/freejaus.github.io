#!/bin/sh

set -e # Exit with nonzero exit code if anything fails

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
# -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH"
if [ "$TRAVIS_PULL_REQUEST" != "false" ]; then
    printf "\nSkipping pages deploy\n"
    exit 0
fi

REPO=`git config remote.origin.url`

if [ "$DEPLOY" = "" ]; then
  printf "\nClone '$REPO:master' to 'out' and clean existing contents\n"
  git clone -b master "$REPO" out
  cd out
  git rm -r *
  cd ..

  set +e
  docker run --rm -t \
    -v /$(pwd):/src \
    -w //src \
    btdi/hugo -DEF -d hugo_out
  set -e
  cp -vr hugo_out/* out
else
  cd out
  git config user.name "Travis CI @ BTD"
  git config user.email "travis@buildthedocs.btd"
  printf "\nAdd .nojekyll\n"
  #https://help.github.com/articles/files-that-start-with-an-underscore-are-missing/
  touch .nojekyll
  printf "\nAdd changes\n"
  git add .
  # If there are no changes to the compiled out (e.g. this is a README update) then just bail.
  if [ $(git status --porcelain | wc -l) -lt 1 ]; then
    echo "No changes to the output on this push; exiting."
    exit 0
  fi
  git commit -am "travis deploy: `git rev-parse --verify HEAD`"
  printf "\nGet the deploy key\n"
  # by using Travis's stored variables to decrypt deploy_key.enc
  eval `ssh-agent -s`
  openssl aes-256-cbc -K $encrypted_085e43ff19d1_key -iv $encrypted_085e43ff19d1_iv -in ../deploy_key.enc -d | ssh-add -
  printf "\nPush to master\n"
  # Now that we're all set up, we can push.
  git push `echo "$REPO" | sed -e 's/https:\/\/github.com\//git@github.com:/g'` master
fi
