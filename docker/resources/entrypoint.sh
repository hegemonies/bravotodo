#!/bin/bash

sleep 3
rm -rf /mnt/vendor
rm /mnt/Gemfile.lock
cp -r vendor /mnt/
cp Gemfile.lock /mnt/
bin/rails db:seed
bin/rails db:migrate
bin/rails server -b 0.0.0.0
