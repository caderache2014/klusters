require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Klusters
  class Application < Rails::Application
    config.secret_key_base = 'secret-key-base'
    config.i18n.enforce_available_locales = false
    config.generators do |g|
      g.test_framework :mini_test, :spec => true, :fixture => false
    end
  end
end
