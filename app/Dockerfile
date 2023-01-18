FROM arm32v7/ruby:3.0.4-alpine

#RUN apk add --no-cache --update --repository https://pkgs.alpinelinux.org/package/edge/main/armv7/tzdata
#RUN TZ=Asia/Tokyo
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apk del tzdata
RUN rm -rf /var/cache/apk/*

RUN apk add --update openssl
RUN apk add make g++ sqlite-dev libpq-dev
RUN apk add postgresql-client

WORKDIR /usr/src/app
RUN bundle init
COPY Gemfile .
COPY Gemfile.lock .
RUN gem update bundler
RUN bundle install
COPY Rakefile .
RUN bundle exec rake -T
