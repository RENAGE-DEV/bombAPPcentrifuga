#!/usr/bin/env bash
set -o errexit

# Clear tmp
rm -rf tmp/
#!/usr/bin/env bash
set -e  # Exit on error
set -x  # Print commands for debugging

# Clear tmp and logs
rm -rf tmp/
rm -rf log/*

# Install dependencies
bundle install --deployment

# Database setup with error handling
if ! bundle exec rake db:migrate; then
    echo "Database migration failed"
    exit 1
fi

# Asset compilation with error handling
if ! bundle exec rake assets:precompile; then
    echo "Asset precompilation failed"
    exit 1
fi

# Create necessary directories
mkdir -p tmp/pids
mkdir -p tmp/cache
mkdir -p log

# Set permissions
chmod -R 755 tmp/
chmod -R 755 log/