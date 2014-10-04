source "https://rubygems.org"

ruby "2.1.3"

gem "bundler", "~> 1.7"

group :development do
  gem "spring", "~> 1.1"
  gem "spring-commands-rspec", "~> 1.0"
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
end

group :test do
  gem "simplecov", "~> 0.9", :require => false
  gem "shoulda-matchers", "~> 2.6", :group => :test, require: false
  gem "codeclimate-test-reporter", "~> 0.4", group: :test, require: false
  gem "database_cleaner", "~> 1.3"
end

group :development, :test do
  gem "pry", "~> 0.10"
  gem "pry-doc", github: "vaysman/pry-doc"
  gem "pry-rails", "~> 0.3"
  gem "dotenv-rails", "~> 0.10"
  gem "rspec-rails", "~> 3.0"
  gem "rspec-activemodel-mocks", "~> 1.0"
  gem "factory_girl_rails", "~> 4.0"
  gem "ffaker", "~> 1.25"
end

# Bundle edge Rails instead: gem "rails", github: "rails/rails"
gem "rails", "4.1.6"
# Use postgresql as the database for Active Record
gem "pg", "~> 0.17"
# Use SCSS for stylesheets
gem "sass-rails", "~> 4.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3"
# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0"
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem "therubyracer",  platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", "~> 0.4", require: false
end

# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# Use unicorn as the app server
# gem "unicorn"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

# Use debugger
# gem "debugger", group: [:development, :test]

gem "bootstrap-sass", "~> 3.2"
gem "devise", "~> 3.2"
gem "r18n-rails", "~> 1.1"
gem "keynote", "~> 0.2"
gem "slim-rails", "~> 2.1"
gem "thin", "~> 1.6"
gem "simple_form", "~> 3.0"
gem "simple_form_bootstrap3", github: "vaysman/simple_form_bootstrap3"
