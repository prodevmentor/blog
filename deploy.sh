#!/bin/bash
rm -rf _site && bundle exec jekyll build && gsutil -m rsync -d -r ./_site gs://www.prodevmentor.com
