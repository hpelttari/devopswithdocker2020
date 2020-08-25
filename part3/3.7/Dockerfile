FROM ruby:2.6-buster

WORKDIR app
COPY rails-example-project .

RUN apt-get update && apt-get upgrade -y && \
    apt-get install nodejs -y && \
    sed -i 's/ruby '\''2.6.0'\''/ruby '\''2.6.6'\''/g' Gemfile && \
    gem install bundler && bundle install && \ 
    rails db:migrate && \
    gem uninstall bundler && \
    rm .gitignore README.md && \ 
    rm -rf /var/lib/apt/lists/* test && \
    useradd -m app && \
    chown app -R /app

USER app

EXPOSE 3000
CMD rails s
