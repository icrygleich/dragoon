#create jekyll from ruby alpine

# min ruby 2.5 or later
FROM ruby:3.5-alpine3.15

# add jekyll dep to alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# update ruby bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll
