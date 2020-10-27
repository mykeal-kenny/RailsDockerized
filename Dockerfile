FROM ruby:2.6-slim-buster

RUN apt-get update -qq && \
apt-get install -y nodejs \
postgresql-client \
openssh-server \
&& echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true

# Freeze Gemfile
RUN bundle config --global frozen 1

# Install for production
RUN bundle install --without development test

COPY . /usr/src/app
RUN bundle exec rake DATABASE_URL=postgresql:does_not_exist assets:precompile


WORKDIR /home/site/wwwroot
COPY Gemfile* /home/site/wwwroot/Gemfile
COPY Gemfile.lock /home/site/wwwroot/Gemfile.lock
RUN bundle install
COPY . /home/site/wwwroot/Gemfile

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 80 2222

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]