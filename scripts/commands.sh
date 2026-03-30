#!/bin/sh

set -e

echo "⏳ Esperando o banco..."

while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
  sleep 5
done

echo "✅ Banco pronto!"

python manage.py collectstatic --noinput
python manage.py migrate --noinput

echo "🚀 Subindo Django..."
exec python manage.py runserver 0.0.0.0:8000