FROM bravotodo-builder

WORKDIR /app
COPY . /app

RUN rm config/database.yml
COPY docker/resources/custom_database_settings.yml config/database.yml
COPY docker/resources/entrypoint.sh ./entrypoint.sh

RUN rm -rf /app/vendor && cp -r /work/vendor /app/vendor
RUN rm -rf Gemfile.lock && cp /work/Gemfile.lock .

RUN chmod +x entrypoint.sh
RUN rm -rf /work && apt clean

EXPOSE 3000

CMD /app/entrypoint.sh
