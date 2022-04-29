# Analytics
export LIGHTDASH_INSTALL_TYPE=heroku

# Enable debug logs
export LIGHTDASH_LOG_LEVEL=debug

# heroku ssl fix
export PGCONNECTIONURI=$DATABASE_URL?sslmode=no-verify

# migrate db
yarn workspace backend migrate-production

exec "$@"
