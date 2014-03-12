require "test_helper"

feature "As a user I want to be able to sign out from the app" do
  scenario "sign out" do
    sign_up

    click_on "Logout"
    page.text.must_include "You need to sign in"
   # page.text.must_include ""
  end

end