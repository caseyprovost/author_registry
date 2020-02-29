# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.0"
# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"
# Use Puma as the app server
gem "puma", "~> 3.12"

gem "rack-cors"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

gem "graphiti-rails"
gem "kaminari"
gem "responders"
gem "versionist"
gem "factory_bot_rails"
gem "faker"
gem "vandal_ui"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "graphiti_spec_helpers"
  gem "pry"
  gem "pry-byebug"
  gem "standard"
  gem "brakeman"
  gem "bundler-audit"
  gem "spring"
  gem "spring-commands-rspec"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
end

group :test do
  gem "rspec-rails", "~> 4.0.0.beta.2"
  gem "test-prof"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
