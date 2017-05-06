source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# rspec-rails is a testing framework for Rails 3.x, 4.x and 5.0
group :development, :test do
  gem 'rspec-rails', '~> 3.5'
end

# jQuery for Rails
gem 'jquery-rails', '~> 4.3.1'

# This gem packages the jQuery UI assets for the Rails
gem 'jquery-ui-rails', '~> 6.0.1'

# Strategy to authenticate with Google via OAuth2 in OmniAuth
gem "omniauth-google-oauth2", '~> 0.4.1'

# font-awesome-rails provides the Font-Awesome web fonts and stylesheets
gem "font-awesome-rails", '~> 4.7.0.2'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
end

# Detect Language API Client
gem 'detect_language', '~>  1.0.7'

# A Sprockets transformer that converts ES6 code into vanilla ES5 with Babel JS
gem 'sprockets', '>= 3.0.0' # sprockets-es6 dependency
gem 'sprockets-es6', '~> 0.9.2'
