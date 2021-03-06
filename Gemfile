# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'active_storage_validations', '0.8.2'
# gem 'aws-sdk-s3',                 '~> 1.93', '>= 1.93.1', require: false
gem 'bcrypt', '~> 3.1',           '>= 3.1.12'
gem 'bootsnap',                   '>= 1.4.4', require: false
gem 'bootstrap-sass',             '~> 3.3', '>= 3.3.6'
gem 'bootstrap-will_paginate',    '~> 1.0'
gem 'faker',                      '~> 1.6', '>= 1.6.6'
gem 'image_processing',           '~> 1.12', '>= 1.12.1'
gem 'jbuilder',                   '~> 2.7'
gem 'mini_magick',                '~> 4.5', '>= 4.5.1'
gem 'puma',                       '~> 5.0'
gem 'rails',                      '~> 6.1.3', '>= 6.1.3.1'
gem 'sass-rails',                 '>= 6'
gem 'turbolinks',                 '~> 5'
gem 'webpacker',                  '~> 5.0'
gem 'will_paginate',              '~> 3.1'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen',              '~> 3.3'
  gem 'rack-mini-profiler',  '~> 2.0'
  gem 'spring'
  gem 'sqlite3',             '~> 1.4'
  gem 'web-console',         '>= 4.1.0'
end

group :test do
  gem 'capybara',                     '>= 3.26'
  gem 'guard',                        '2.15.0'
  gem 'guard-minitest',               '2.4.6'
  gem 'minitest',                     '5.11.3'
  gem 'minitest-reporters',           '1.3.8'
  gem 'rails-controller-testing',     '1.0.4'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'pg', '1.1.4'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
