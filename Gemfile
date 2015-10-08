source 'https://rubygems.org'

gem 'rails', '4.2.1'
gem 'pg'
gem 'jbuilder', '~> 2.0'
gem 'rack-cors', require: 'rack/cors'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'
gem 'pry-rails'
gem 'responders', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'
gem 'figaro'
gem 'coveralls', require: false

group :production, :staging do
  gem 'heroku_rails_deflate'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'faker'
  gem 'database_cleaner'
end