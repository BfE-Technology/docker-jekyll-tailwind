FROM jekyll/jekyll:3.8
LABEL maintainer="kevin.huang.han.work@gmail.com"

RUN mkdir /srv/jekyll2/ && chmod 777 /srv/jekyll2/
COPY Gemfile /srv/jekyll2/
RUN cd /srv/jekyll2/ && bundle install

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT /usr/local/bin/entrypoint.sh