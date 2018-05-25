FROM ruby:2.5-alpine

RUN apk update && \
      apk add --no-cache make g++ sqlite-dev && \
      gem install mailcatcher -v 0.6.5

EXPOSE 1080
EXPOSE 1025

CMD ["mailcatcher", "-f"]
