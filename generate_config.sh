#!/bin/bash

cat << EOF > snipe-it.conf

# ------------------------------
# snipe-it web ui configuration
# ------------------------------
# example.org is _not_ a valid hostname, use a fqdn here.

SNIPEIT_HOSTNAME=asset.dotnot.pl

# ------------------------------
# SQL database configuration
# ------------------------------

DBNAME=snipe-it
DBUSER=snipe-it

# Please use long, random alphanumeric strings (A-Za-z0-9)

DBPASS=$(LC_ALL=C </dev/urandom tr -dc A-Za-z0-9 | head -c 28)
DBROOT=$(LC_ALL=C </dev/urandom tr -dc A-Za-z0-9 | head -c 28)

DB_PUID=1000
DB_PGID=1000

# ------------------------------
# Other
# ------------------------------

# Your timezone
# See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones for a list of timezones
# Use the row named 'TZ database name' + pay attention for 'Notes' row

TZ=Poland

EOF