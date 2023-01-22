#!/bin/sh
# wait-for-postgres.sh

set -e

host="$1"
shift

until PGPASSWORD="pass" psql -d "r0uei" -h "$host" -U "user" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"

exist_db=`cat config/.r0uei_database_exist`
echo $exist_db
if [ $exist_db = "0" ] ; then
  bundle exec rake db:migrate
  bundle exec rake db:seed
fi

echo "1" > config/.r0uei_database_exist

exec "$@"
