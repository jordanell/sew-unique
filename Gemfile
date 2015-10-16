source 'https://rubygems.org'

# The current ruby stable version
ruby '2.2.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use PostgreSQL for the db
gem 'pg', '0.15.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Styles and assets
gem 'bourbon', '4.2.2'
gem 'neat', '1.7.2'
gem 'font-awesome-sass', '4.3.0'

# SEO
gem 'meta-tags'
gem 'gabba'

# For attaching files
gem 'paperclip', '4.3.1'

# For S3 storage
gem 'aws-sdk', '< 2.0'

group :development do
  # For documenting models
  gem 'annotate', '2.6.10'
end

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Rspec for testing
  gem 'rspec-rails', '~> 3.0.2'

  # Model factories
  gem 'factory_girl', '4.5.0'
end

group :staging, :production do
  gem 'unicorn', '~> 4.6.3'
end
