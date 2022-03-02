#!/bin/bash

set -eux

cd ~/laravel-ci-2
php artisan migrate --force
php artisan config:cache