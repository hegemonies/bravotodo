#!/bin/bash

sleep 2
bin/rails db:migrate
bin/rails server -b 0.0.0.0
