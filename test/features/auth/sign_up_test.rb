require "test_helper"

feature "As a user I want to sign up for an account" do
  scenario "user signs up for an account successfully" do
    visit root_path
    click_on "Sign up"
    fill_in "Email", with: "new@user.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign Up"
    page.must_have_content "My Photos"
  end
end
