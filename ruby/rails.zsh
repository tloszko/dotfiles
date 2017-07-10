#!/bin/zsh

export RAILS_ENV=development
export RACK_ENV=development

last_migration(){
  db/migrate/$(ls db/migrate/ | sort | tail -1)
}

elm(){
  e last_migration
}
