#!/usr/bin/env sh
set -e

if [ "${SKIP_PREDEPLOY:-false}" != "true" ] && [ "${MEDUSA_WORKER_MODE}" != "worker" ]; then
  echo "Running predeploy step..."
  npm run predeploy
fi

exec npm run start
