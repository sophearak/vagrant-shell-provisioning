#!/usr/bin/env bash

DB=$1;
mysql -utypo3 -psecret -e "DROP DATABASE IF EXISTS $DB";
mysql -utypo3 -psecret -e "CREATE DATABASE $DB";
