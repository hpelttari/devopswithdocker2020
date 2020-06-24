FROM ruby:2.6-buster
RUN apt-get update && apt-get upgrade -y \
&& apt-get install nodejs -y
WORKDIR app
COPY rails-example-project .
RUN sed -i 's/ruby '\''2.6.0'\''/ruby '\''2.6.6'\''/g' Gemfile
RUN gem install bundler && bundle install
EXPOSE 3000
RUN rails db:migrate
CMD rails s
