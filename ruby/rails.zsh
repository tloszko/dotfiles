#!/bin/zsh

export RAILS_ENV=development
export RACK_ENV=development
export RUBY_WORKERS=10

last_migration(){
  db/migrate/$(ls db/migrate/ | sort | tail -1)
}

elm(){
  e last_migration
}

export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
