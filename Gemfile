source "https://rubygems.org"

gem "rails", "~> 8.0.1"

# Asset pipeline
gem "propshaft"

# App server
gem "puma", ">= 5.0"

# JavaScript modules + Hotwire
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# CSS bundler (uses yarn)
gem "cssbundling-rails"

# API helpers
gem "jbuilder"

# Auth
gem "bcrypt", "~> 3.1.7"

# Windows support
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Job/Cache/Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Startup speed
gem "bootsnap", require: false

# Deployment tools
gem "kamal", require: false
gem "thruster", require: false

# ✅ PostgreSQL for Render (production)
group :production do
  gem "pg", "~> 1.5"
end

# ✅ SQLite for local dev/test only
group :development, :test do
  gem "sqlite3", "~> 1.4"

  # Debugging
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "faker", "~> 3.5"
end
