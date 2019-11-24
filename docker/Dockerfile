FROM ruby:2.6.5
WORKDIR /app
COPY . /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN bin/bundle install
RUN rm config/database.yml
COPY docker/resources/custom_database_settings.yml config/database.yml
COPY docker/resources/entrypoint.sh ./entrypoint.sh
RUN chmod +x entrypoint.sh
EXPOSE 3000
CMD ./entrypoint.sh
