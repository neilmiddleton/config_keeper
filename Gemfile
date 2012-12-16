source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'pg'
gem 'acts-as-taggable-on'
gem 'devise'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda'
  if RUBY_PLATFORM =~ /darwin/
    gem 'guard'
    gem 'guard-rspec'
    gem 'rb-fsevent', '~> 0.9.1'
    gem 'terminal-notifier-guard'
  end
end
