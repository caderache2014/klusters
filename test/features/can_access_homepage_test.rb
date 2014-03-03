require "test_helper"

feature "As a user I want to access the homepage" do
  scenario "user accesses homepage successfully" do
    visit root_path
    page.status_code.must_equal 200
  end
end
