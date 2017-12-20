#!/bin/bash
jekyll build && gsutil -m rsync -d -r ./_site gs://www.prodevmentor.com
