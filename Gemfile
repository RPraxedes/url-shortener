source "https://rubygems.org"

ruby "2.7.1"

gem "browser", require: "browser/browser"
gem "rails", "~> 6.0.3", ">= 6.0.3.3"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 4.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"
gem "bootsnap", ">= 1.4.2", require: false

group :development, :test do
  gem "annotate"
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "erb_lint"
  gem "fasterer"
  gem "factory_bot_rails"
  gem "rspec-rails", "4.0.1"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "rubocop-performance"
end

group :development do
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "shoulda-callback-matchers"
  gem "shoulda-matchers", "~> 4.3.0"
  gem "webdrivers"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
