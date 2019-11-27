FROM bravotodo-builder

WORKDIR /app
COPY . /app

#RUN bin/bundle install --path vendor/cache

RUN rm config/database.yml
COPY docker/resources/custom_database_settings.yml config/database.yml
COPY docker/resources/entrypoint.sh ./entrypoint.sh

RUN cp -r /work/vendor/cache /app/vendor/cache
RUN rm Gemfile.lock && cp /work/Gemfile.lock .

RUN chmod +x entrypoint.sh

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
