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

  def sign_up
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: "logan@example.com" #{}users(:test_user).email
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign Up"
    page.text.must_include("Welcome!")
  end
  def sign_in
    visit new_user_session_path
    fill_in "Email", with: users(:test_user).email
    fill_in "Password", with: "password"
    click_on "Sign in"
  end
end