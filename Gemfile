source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

gem 'unicorn'

gem 'capistrano-rails', group: :development

gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'omniauth'

gem 'thin'
gem 'bower-rails'

group :assets do
  gem 'spinjs-rails'
end

group :development, :test do
  gem 'quiet_assets'
  gem 'pry-rails'
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'rb-fsevent' if `uname` =~ /Darwin/
end


group :test do
  gem 'shoulda-matchers', require: false
end
