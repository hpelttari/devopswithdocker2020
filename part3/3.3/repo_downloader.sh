#!/bin/bash

# Usage: ./repo_downloader.sh <git repo url> <username>/<tag name>

if [[ $# -eq 0 ]] ; then
    echo "Supply the repository url as a command line argument"
    exit 1
fi

if [[ $# < 2 ]] ; then
    echo "Supply a tag name for the container"
    exit 1
fi

url=$1
tag=$2

mkdir downloaded_repo
git clone ${url} ./downloaded_repo
cd downloaded_repo

docker build -t ${tag} .
docker push ${tag}
cd ..
rm -r downloaded_repo

exit 0
