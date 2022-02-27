FROM jekyll/jekyll:4.2.0
LABEL maintainer="kevin.huang.han.work@gmail.com"

RUN mkdir /srv/jekyll2/ && chmod 777 /srv/jekyll2/
COPY Gemfile package.json /srv/jekyll2/
RUN cd /srv/jekyll2/ && yarn install && bundle install && yarn tailwindcss init -p
COPY postcss.config.js tailwind.config.js /srv/jekyll2/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 777 /usr/local/bin/entrypoint.sh

ENTRYPOINT /usr/local/bin/entrypoint.sh