ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"
require 'simplecov'

SimpleCov.start

class ActiveSupport::TestCase
  fixtures :all

  def sign_in
    @user = users(:test_user)
    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: "password"
    click_on "Sign in"
  end
end