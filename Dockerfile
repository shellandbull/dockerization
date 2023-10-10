FROM ruby:3.1.2-alpine
ENV RAILS_ROOT /usr/src/app
WORKDIR $RAILS_ROOT
COPY Gemfile Gemfile.lock ./
RUN apk add --update \
  tzdata \
  git \
  bash \
  build-base \
  libxml2-dev \
  libxslt-dev \
  libpq-dev \
  librdkafka-dev
RUN bundle install
COPY . .
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

