source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'rebirth'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development, :test do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'pry'
  gem 'pry-rails'

  gem 'mi'
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate'

  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-rspec', require: false


  gem 'rubocop', require: false
  gem 'railroady'


  # for test
  gem 'rspec-rails'
  gem 'rspec-power_assert'
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem 'coveralls', require: false
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
