source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.2'
gem 'pg', '0.15.1'
# for postgres
gem 'bootstrap-sass', '2.3.2.0'
# pretty app with bootstrap
gem 'bcrypt-ruby', '3.1.2'
# for authentication
gem 'will_paginate', '3.0.4'
# pagination-- only 30 or so users show up on the index page at a time
gem 'bootstrap-will_paginate', '0.0.9'
# pretty pagination


group :development, :test do
  # gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
  # rspec for testing
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  # for rspec testing
  gem 'growl', '1.0.3'
  # for guard-rspec
end

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'rails_12factor', '0.0.2'
end