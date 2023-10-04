FROM ruby:3.2.2
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  node.js

WORKDIR /rails-docker
COPY Gemfile Gemfile.lock /rails-docker/


RUN gem install bundler && bundle install

COPY . /rails-docker/
