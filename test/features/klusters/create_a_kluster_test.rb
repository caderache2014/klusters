require "test_helper"

feature "As a user I want to create a kluster" do
  scenario "create a kluster successfully" do
    sign_in
    visit root_path
    click_on "Create a Kluster"
    fill_in "Name", with: "Test"
    click_on "Create Kluster"
    page.must_have_content "Kluster was successfully created."
  end
end
