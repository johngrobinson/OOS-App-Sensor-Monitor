#!/bin/sh

## script to build site and move to omega dir

rm -rf dist/
npm run build

git rm ../omega/www/static/css/*
git rm ../omega/www/static/js/*

cp dist/index.html ../omega/www/
cp -r dist/static/ ../omega/www/static/
