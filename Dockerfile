FROM ruby:2.1
MAINTAINER Deshi Xiao<xiaods@gmail.com>

RUN gem install --no-ri --no-rdoc github-pages

WORKDIR /app
COPY . /app/
EXPOSE 4000

ENTRYPOINT ["jekyll", "serve", "--watch", "--drafts", "--baseurl", ""]
