#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
bundle install

# Setup database
bundle exec rake db:migrate
bundle exec rake db:seed

# Asset compilation
bundle exec rake assets:clean
bundle exec rake assets:precompile

# Ensure all changes are saved
bundle exec rake assets:clean