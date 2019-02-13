ruby ENV['CUSTOM_RUBY_VERSION'] || '2.5.3'

source 'https://rubygems.org'

gem 'rails', '5.0.2'
gem 'pg', '~> 0.18'
gem 'sass-rails', '~> 5.0.4'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jquery-ui-sass-rails'
gem 'jbuilder', '~> 2.0'
gem 'slim-rails', require: ["slim", "slim/smart"]
gem 'will_paginate', '~> 3.0.6'
gem 'friendly_id'
gem 'redcarpet'
gem 'pygments.rb'
gem 'faker'
gem 'pry'

group :development, :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec-benchmark'
  gem 'capybara'
  gem 'factory_bot_rails'
end

group :test do
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'bullet', '~> 5.9'
end

group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end
