#!/bin/bash
set -e

# remove a potentially pre-existing server.pid for rails.
rm -f /app/tmp/pids/server.pid

# the exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
