#!/bin/bash
rm -rf _site && jekyll build && gsutil -m rsync -d -r ./_site gs://www.prodevmentor.com
