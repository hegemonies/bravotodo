#!/bin/bash

sleep 5
bin/rails db:migrate
bin/rails server -b 0.0.0.0
