ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails/capybara"
require 'rspec2minitest/capybara'
require 'rspec2minitest/paperclip'
require 'paperclip/matchers'

class ActiveSupport::TestCase
   extend Paperclip::Shoulda::Matchers
  #ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
#describe Kluster do
#  it { should have_attached_file(:document) }
#  #it { should validate_attachment_presence(:avatar) }
#  #it { should validate_attachment_content_type(:avatar).
#  #              allowing('image/png', 'image/gif').
#   #             rejecting('text/plain', 'text/xml') }
#  #it { should validate_attachment_size(:avatar).
#  #              less_than(2.megabytes) }
#end
class FeatureSpec < MiniTest::Spec
  require "capybara/poltergeist"
  include Capybara::DSL
  Capybara.default_driver = :poltergeist
end

class ActionDispatch::IntegrationTest
  require "capybara/poltergeist"
  include Capybara::DSL
  Capybara.default_driver = :poltergeist
  include Capybara::Assertions
end