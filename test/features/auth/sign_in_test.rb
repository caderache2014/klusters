require "test_helper"

feature "As a user I want to be able to sign in" do
  scenario "signs in successfully" do
    visit new_user_session_path
    fill_in "Email", with: users(:test_user).email
    fill_in "Password", with: "password"
    click_on "Sign in"
    page.must_have_content "My Photos"
  end

  scenario "fails to sign in with mismatched password" do
    visit new_user_session_path
    fill_in "Email", with: users(:test_user).email
    fill_in "Password", with: "passwort"
    click_on "Sign in"
    page.text.must_include "Invalid email or password"
  end

  scenario "fails to sign in with a foreign (new) email" do
    visit new_user_session_path
    fill_in "Email", with: "xxxxxx@xxxxx.com"
    fill_in "Password", with: "password"
    click_on "Sign in"
    page.text.must_include "Invalid email or password"
  end
end
