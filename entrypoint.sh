# expect project as heroku config
export LIGHTDASH_PROJECT_0_ACCOUNT_ID=$DBT_CLOUD_ACCOUNT_ID
export LIGHTDASH_PROJECT_0_PROJECT_ID=$DBT_CLOUD_PROJECT_ID
export LIGHTDASH_PROJECT_0_ENVIRONMENT_ID=$DBT_CLOUD_ENVIRONMENT_ID
export LIGHTDASH_PROJECT_0_API_KEY=$DBT_CLOUD_API_KEY

# heroku ssl fix
export PGCONNECTIONURI=$DATABASE_URL?sslmode=no-verify

# migrate db
yarn workspace backend migrate-production

exec "$@"
