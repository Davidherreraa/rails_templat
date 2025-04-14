source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.1"

# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire SPA stack
gem "turbo-rails"
gem "stimulus-rails"

# CSS bundler
gem "cssbundling-rails"

# Build JSON APIs with ease
gem "jbuilder"

# Password security
gem "bcrypt", "~> 3.1.7"

# Zone info for Windows support
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Solid Rails features
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Improve boot times
gem "bootsnap", require: false

# Deploy anywhere as a Docker container
gem "kamal", require: false

# Add HTTP caching/compression to Puma
gem "thruster", require: false

# PostgreSQL for production (Render)
group :production do
  gem "pg", "~> 1.5"
end

# SQLite for local dev & test only
group :development, :test do
  gem "sqlite3", "~> 1.4"

  # Debugging tools
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Security scanning
  gem "brakeman", require: false

  # Ruby/Rails linting
  gem "rubocop-rails-omakase", require: false
end

# Console tools for dev
group :development do
  gem "web-console"
end

# Test suite
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker", "~> 3.5"
end
