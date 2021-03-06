################################################################################################
###                                        Setup                                             ###
################################################################################################

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'


################################################################################################
###                                       Preset Gems                                        ###
################################################################################################

gem 'rails',        '~> 6.0.2.2'
gem 'pg',           '>= 1.1.4',  '< 2.0'
gem 'puma',         '~> 4.2.1'
gem 'sass-rails',   '~> 6.0.0'
gem 'webpacker',    '~> 4.0.7'
gem 'uglifier',     '>= 4.2.0'
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks',   '~> 5.2.1'
gem 'jbuilder',     '~> 2.9.1'
gem 'bootsnap',     '>= 1.4.5',             require: false

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.1.3'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'


################################################################################################
###                                     Development Gems                                     ###
################################################################################################

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara',               '~> 3.29.0'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console',            '>= 4.0.1'
  gem 'listen',                 '>= 3.2.0'
  gem 'spring'
  gem 'spring-watcher-listen',  '~> 2.0.1'

  # Check for N+1 queries
  gem 'bullet'

   # Live Reload of files in browser during development
   gem "guard", ">= 2.16.1", :require => false
   gem "guard-livereload",  :require => false
   gem "rack-livereload"
   gem "rb-fsevent",        :require => false
end


################################################################################################
###                                     My Global Gems                                       ###
################################################################################################

# Friendly URLs
gem 'friendly_id',            '~> 5.3.0', require: "friendly_id"

# Design Gems
gem 'font-awesome-rails'                    # Text Icons
gem 'redcarpet',              '~> 3.5.0'    # Markdown

# Image upload and processing
gem 'carrierwave',            '~> 2.0.2'
gem 'carrierwave-aws'
gem "mini_magick" 

# For sending emails
gem 'mailgun-ruby'

# for .env file
gem 'dotenv-rails'

# Spam fighter
gem 'recaptcha', require: "recaptcha/rails"


################################################################################################
###                                Application Specific Gems                                 ###
################################################################################################

gem 'devise', '4.7.1'
gem 'omniauth-oauth2', '1.5.0'
gem "noticed", "~> 1.2"
gem 'sidekiq'
gem 'pundit'
