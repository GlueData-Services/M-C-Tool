FROM ruby:3.1.2-alpine AS assets

WORKDIR /app

ARG UID=1000
ARG GID=1000

RUN apk add --no-cache build-base curl git mariadb-dev tzdata nodejs yarn
RUN addgroup ruby
RUN adduser ruby -G ruby -D
RUN mkdir /node_modules
RUN chown ruby:ruby -R /node_modules /app

USER ruby

COPY --chown=ruby:ruby Gemfile* ./
RUN bundle install

COPY --chown=ruby:ruby package.json *yarn* ./
RUN yarn install

ARG RAILS_ENV="production"
ARG NODE_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
  NODE_ENV="${NODE_ENV}" \
  PATH="${PATH}:/home/ruby/.local/bin:/node_modules/.bin" \
  USER="ruby"

COPY --chown=ruby:ruby . .

RUN if [ "${RAILS_ENV}" != "development" ]; then \
  SECRET_KEY_BASE=dummyvalue rails assets:precompile; fi

CMD ["ash"]

###############################################################################

FROM ruby:3.1.2-alpine AS app

WORKDIR /app

ARG UID=1000
ARG GID=1000

RUN apk add --no-cache curl mariadb-client mariadb-dev doas bash tzdata neovim netcat-openbsd
RUN addgroup ruby
RUN adduser ruby -G ruby -D
RUN mkdir /node_modules
RUN chown ruby:ruby -R /node_modules /app

USER ruby

COPY --chown=ruby:ruby bin/ ./bin
RUN chmod 0755 bin/*

ARG RAILS_ENV="production"
ENV RAILS_ENV="${RAILS_ENV}" \
  PATH="${PATH}:/home/ruby/.local/bin" \
  USER="ruby"

COPY --chown=ruby:ruby --from=assets /usr/local/bundle /usr/local/bundle
COPY --chown=ruby:ruby --from=assets /app/public /public
COPY --chown=ruby:ruby . .

ENTRYPOINT ["/app/bin/docker-entrypoint-web"]

EXPOSE 8000

CMD ["rails", "s"]
