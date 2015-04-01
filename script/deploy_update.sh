bundle install
bundle exec rake assets:precompile
bundle exec rake db:migrate RAILS_ENV=production
bundle exec rake unicorn:restart
