FROM ruby:3.1.1-slim

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    curl \
    less \
    git \
    mariadb-client \
    libmariadb-dev \
    nodejs \
    npm \
  && npm install --global yarn \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

#    libpq-dev \
#    postgresql-client \

ENV LANG=C.UTF-8 \
  BUNDLE_JOBS=4 \
  BUNDLE_RETRY=3

RUN gem update --system && gem install bundler

WORKDIR /usr/src/app

ENTRYPOINT ["./entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
