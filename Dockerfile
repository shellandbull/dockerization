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
  librdkafka-dev \
  vim \
  vim-doc \
  vim-tutor \
  curl
RUN bundle install
COPY . .
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD curl -f http://localhost:3000/health || exit 1
