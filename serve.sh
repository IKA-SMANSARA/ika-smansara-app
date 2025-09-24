#!/bin/bash

# Serve Jekyll site locally
echo "Installing Jekyll dependencies..."
bundle install

echo "Serving Jekyll site at http://localhost:4000"
bundle exec jekyll serve --watch --host 0.0.0.0