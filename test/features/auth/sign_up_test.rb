require "test_helper"

feature "As a user I want to sign up for an account" do
  scenario "user signs up for an account successfully" do
    visit new_user_registration_path
    click_on "Sign up"
    fill_in "Email", with: "new@user.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign Up"
    page.must_have_content "My Photos"
  end

  scenario "user attempts to sign up with too short an a password" do
    visit new_user_registration_path
    click_on "Sign up"
    fill_in "Email", with: "new@user.com"
    fill_in "Password", with: "pas"
    fill_in "Password confirmation", with: "pas"
    click_on "Sign Up"
    page.must_have_content "too short"
  end

  scenario "user attempts to sign up with a mismatched password" do
    visit new_user_registration_path
    click_on "Sign up"
    fill_in "Email", with: "new@user.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "passwort"
    click_on "Sign Up"
    page.text.must_include "Password confirmation doesn't match"
  end

end
