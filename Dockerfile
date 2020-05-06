FROM cypress/included:4.5.0
WORKDIR /app
ENV TZ=Europe/Berlin
# ENV PORT=3000
# ENV BROWSER=chrome
# ENV SOURCE_DIR=src
COPY entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]