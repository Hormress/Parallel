#!/bin/bash
set -eu

# For use in the GitHub workflow process.
# # Run in the root of the repository to produce a dist/ directory.

# Create directory structure
mkdir -p dist

# Copy static files
cp images/* dist/images

cp -r branch/* dist/branch

cp LICENSE.md dist

# Merge and minify CSS files
cat p?-*.css > dist/parallel.css
npm run minify:parallel

cat normalize*.css > dist/normalize.css
npm run minify:normalize
