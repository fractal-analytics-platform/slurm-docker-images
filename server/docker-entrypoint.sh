#!/bin/bash

sudo service munge start

alembic revision --autogenerate -m 'init'

alembic upgrade head

fractal-server --host 0.0.0.0

tail -f /dev/null
