#!/bin/zsh

talks=(ES2015 intro-to-javascript redis revim sinatra weblog)

for talk in $talks; do
  echo "Deploying $talk"
  rsync -rv $talk/css $talk/js $talk/lib $talk/plugin $talk/index.html jthrrnco@j3rn.com:~/public_html/talks/$talk
  echo
done
