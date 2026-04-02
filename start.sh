#!/bin/sh

set -eu

: "${PGHOST:?PGHOST is required}"
: "${PGPORT:?PGPORT is required}"
: "${PORT:?PORT is required}"

echo "Waiting for Postgres at ${PGHOST}:${PGPORT}..."

until pg_isready -h "${PGHOST}" -p "${PGPORT}" >/dev/null 2>&1; do
  sleep 1
done

echo "Preparing Chatwoot database..."

bundle exec rails db:chatwoot_prepare

echo "Starting Chatwoot..."

exec multirun \
  "bundle exec sidekiq -C config/sidekiq.yml" \
  "bundle exec rails server -b 0.0.0.0 -p ${PORT}"
