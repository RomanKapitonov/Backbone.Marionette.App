source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'pg'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development

gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'omniauth'

gem 'thin'

gem 'rabl'
gem 'oj'
gem 'gon'
gem "js-routes"
gem 'eco'

# Assets
gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.0'

group :assets do
  gem 'uglifier', '>= 1.3.0'
end

group :development, :test do
  gem 'bower-rails'
  gem 'quiet_assets'
  gem 'pry-rails'
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/

  gem 'faker'
end

group :test do
  gem 'shoulda-matchers', require: false
end
