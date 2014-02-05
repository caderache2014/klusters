require "test_helper"

feature "UploadPhoto" do
  scenario "the test is sound" do
    visit root_path
    page.must_have_content "New Kluster"
  end
end
