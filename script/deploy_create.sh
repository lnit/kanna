bundle install
bundle exec rake assets:precompile
bundle exec rake db:setup RAILS_ENV=production
bundle exec rake unicorn:start
