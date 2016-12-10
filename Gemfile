source 'https://rubygems.org'

# Standart configuration
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'cancancan'
gem 'aasm'
gem 'haml'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass'
gem 'devise-bootstrap-views'

# Auth
gem 'devise'
gem 'omniauth'

# Admin configuration
gem 'rails_admin', '~> 1.0'
gem 'rails_admin_rollincode', '~> 1.0'

# Generators
gem 'wkhtmltopdf-binary'
gem 'wicked_pdf'

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'faker'
end

group :test do
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'ffaker'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :assets do
  gem 'therubyracer'
  gem 'uglifier'
end

group :production do
  gem 'rails_12factor'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
