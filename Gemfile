source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'

gem 'bootflat-rails'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'sass-rails',             git: 'https://github.com/zakelfassi/sass-rails'
gem 'uglifier',               '>= 1.3.0'
gem 'coffee-rails',           '~> 4.0.0'
gem 'haml'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

gem 'mongoid',                '4.0.0.rc2'
gem 'devise'
gem 'cancan'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development, :test do
  gem 'thin'
  gem 'quiet_assets'
  gem 'better_errors'

  gem 'binding_of_caller'
  gem 'pry-rails'
  gem 'pry-debugger'

  gem 'parallel_tests'
  gem 'ffaker'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'mongoid-rspec',             '~> 1.10.0'
  # gem 'json_spec'

  # gem 'vcr'
  # gem 'webmock'
  gem 'headless'
  gem 'launchy'
  gem 'capybara'
  gem 'capybara-webkit'

  gem 'guard-rspec'
  gem 'terminal-notifier-guard'
  gem 'spring-commands-rspec'
  gem 'database_cleaner'
end

group :test do
  gem 'simplecov',                 require: false
  gem 'coveralls',                 require: false
end