#!/usr/bin/env bash

set -e

git status
git add .
git commit -m "${1:-Update FiveM resources}"
git push
