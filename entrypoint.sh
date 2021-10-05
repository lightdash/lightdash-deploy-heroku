# Analytics
export LIGHTDASH_INSTALL_TYPE=heroku

# heroku ssl fix
export PGCONNECTIONURI=$DATABASE_URL?sslmode=no-verify

# migrate db
yarn workspace backend migrate-production

exec "$@"
